require "test_helper"

# K-1 / B-05: Die Bearbeitungssperre fuer Events in Pruefung muss auch gelten, wenn
# eine Aenderung und eine Einreichung gleichzeitig laufen. Geprueft wird der echte
# Bearbeitungsrequest eines geprueften Anbieters fuer seinen eigenen Entwurf.
#
# Echte Nebenlaeufigkeit mit getrennten PostgreSQL-Verbindungen. Keine
# Testtransaktion, damit beide Verbindungen die Daten sehen; angelegte Datensaetze
# werden im teardown gezielt entfernt. Koordination ausschliesslich ueber Queues
# und eine bedingungsbasierte Abfrage von pg_stat_activity, jeweils mit Zeitlimit.

# Test-Schalter: haelt den Request unmittelbar nach dem Laden des Events an
# (Thread-lokal, je Test gesetzt). Ohne gesetzten Schalter ohne Wirkung.
module PauseAfterEventLoad
  private

  def load_event
    super
    pause = Thread.current[:frello_test_after_event_load]
    pause.call if pause && !performed?
  end
end
ProviderPortal::EventsController.prepend(PauseAfterEventLoad)

class DraftUpdateRaceTest < ActionDispatch::IntegrationTest
  self.use_transactional_tests = false

  TIMEOUT = 10 # Sekunden je Wartestelle
  TITLE_BEFORE = "Titel vor der Einreichung"
  TITLE_AFTER  = "Nach der Einreichung geschrieben"

  setup do
    @provider = create_provider
    @user = create_provider_user(@provider)
    @event = create_event(@provider, status: "draft", title: TITLE_BEFORE)
    sign_in_as(@user)
  end

  teardown do
    Thread.current[:frello_test_after_event_load] = nil
    event_ids = Event.where(provider_id: @provider.id).pluck(:id)
    AuditEntry.where(subject_type: "Event", subject_id: event_ids)
              .or(AuditEntry.where(actor_id: @user.id)).delete_all
    EventReview.where(event_id: event_ids).delete_all
    Event.where(id: event_ids).delete_all
    InternalUser.where(id: @user.id).delete_all
    Provider.where(id: @provider.id).delete_all
  end

  # Reihenfolge: (1) der Bearbeitungsrequest laedt den Entwurf, (2) die Einreichung
  # wird in einer zweiten Verbindung abgeschlossen, (3) der Request laeuft weiter.
  test "Aenderung, die vor der Einreichung geladen wurde, schreibt danach nicht mehr" do
    loaded = Queue.new
    submitted = Queue.new

    submitter = in_own_connection do
      raise "Bearbeitungsrequest hat den Entwurf nicht geladen" unless loaded.pop(timeout: TIMEOUT)

      result = Services::SubmitEventForReview.new(event: Event.find(@event.id), actor: @user).call
      submitted << true
      result
    end

    Thread.current[:frello_test_after_event_load] = lambda do
      loaded << true
      raise "Einreichung wurde nicht abgeschlossen" unless submitted.pop(timeout: TIMEOUT)
    end
    patch provider_event_path(@event), params: { event: { title: TITLE_AFTER } }
    Thread.current[:frello_test_after_event_load] = nil

    assert_rejected_after_submission(joined_value(submitter))
  end

  # Reihenfolge: (1) eine laufende Einreichung haelt die Zeilensperre, (2) der
  # Bearbeitungsrequest wartet nachweislich auf diese Sperre, (3) die Einreichung
  # wird abgeschlossen, (4) der Request laeuft weiter.
  test "Aenderung wartet auf eine laufende Einreichung und wird danach abgewiesen" do
    locked = Queue.new

    submitter = in_own_connection do |connection|
      ActiveRecord::Base.transaction do
        Event.lock.find(@event.id)
        locked << true
        raise "Bearbeitungsrequest hat nicht auf die Sperre gewartet" unless wait_until { other_session_waits_on_lock?(connection) }

        Services::SubmitEventForReview.new(event: Event.find(@event.id), actor: @user).call
      end
    end
    assert locked.pop(timeout: TIMEOUT), "die Einreichung hat die Sperre nicht erhalten"

    patch provider_event_path(@event), params: { event: { title: TITLE_AFTER } }

    assert_rejected_after_submission(joined_value(submitter))
  end

  private

  def assert_rejected_after_submission(submission)
    assert submission.ok?, "die Einreichung muss gelingen: #{submission.error}"
    @event.reload
    assert_equal TITLE_BEFORE, @event.title,
      "ein Event in Pruefung darf nicht mehr geschrieben werden (Antwort des Requests: #{response.status})"
    assert_equal "in_review", @event.status
    assert_response :forbidden
    assert_match "Bearbeitung nicht möglich", response.body
    assert_equal 1, AuditEntry.where(subject_type: "Event", subject_id: @event.id,
                                     action: "event.submitted_for_review").count
  end

  # Fuehrt den Block in einem eigenen Thread mit eigener Datenbankverbindung aus.
  def in_own_connection(&block)
    thread = Thread.new do
      ActiveRecord::Base.connection_pool.with_connection do |connection|
        connection.execute("SET lock_timeout = '#{TIMEOUT}s'")
        connection.execute("SET statement_timeout = '#{TIMEOUT * 2}s'")
        block.call(connection)
      end
    end
    thread.report_on_exception = false
    thread
  end

  def joined_value(thread)
    assert thread.join(TIMEOUT * 2), "Thread hat das Zeitlimit ueberschritten"
    thread.value
  end

  # Bedingungsbasiertes Warten mit Zeitlimit (kein blindes sleep).
  def wait_until(timeout: TIMEOUT)
    deadline = Process.clock_gettime(Process::CLOCK_MONOTONIC) + timeout
    loop do
      return true if yield
      return false if Process.clock_gettime(Process::CLOCK_MONOTONIC) > deadline

      sleep 0.01
    end
  end

  # Innerhalb einer Transaktion liefert pg_stat_activity sonst einen festen Stand.
  def other_session_waits_on_lock?(connection)
    connection.execute("SELECT pg_stat_clear_snapshot()")
    connection.select_value(<<~SQL).to_i.positive?
      SELECT count(*) FROM pg_stat_activity
      WHERE datname = current_database() AND pid <> pg_backend_pid() AND wait_event_type = 'Lock'
    SQL
  end
end
