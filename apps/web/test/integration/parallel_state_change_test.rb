require "test_helper"

# Befund 2 (Codepruefung PR #6): echte Nebenlaeufigkeit mit getrennten
# PostgreSQL-Verbindungen. Keine Testtransaktion, damit die Threads die Daten
# sehen; angelegte Datensaetze werden im teardown gezielt entfernt.
#
# Koordination ausschliesslich ueber Queues und eine bedingungsbasierte Abfrage
# von pg_stat_activity; jede Wartestelle hat ein Zeitlimit.
class ParallelStateChangeTest < ActiveSupport::TestCase
  self.use_transactional_tests = false

  TIMEOUT = 10 # Sekunden je Wartestelle

  setup do
    @curation = create_curation_user
    @provider = create_provider
    @provider_user = create_provider_user(@provider)
  end

  teardown do
    provider_ids = [ @provider&.id, @other_provider&.id ].compact
    user_ids = [ @curation&.id, @provider_user&.id, @other_user&.id ].compact
    event_ids = Event.where(provider_id: provider_ids).pluck(:id)
    AuditEntry.where(subject_type: "Event", subject_id: event_ids)
              .or(AuditEntry.where(subject_type: "Provider", subject_id: provider_ids))
              .or(AuditEntry.where(actor_id: user_ids)).delete_all
    EventReview.where(event_id: event_ids).delete_all
    ProviderReview.where(provider_id: provider_ids).delete_all
    Event.where(id: event_ids).delete_all
    InternalUser.where(id: user_ids).delete_all
    Provider.where(id: provider_ids).delete_all
  end

  test "zweiter Entscheid wartet auf die Zeilensperre und wird danach abgewiesen" do
    event = create_event(@provider, status: "in_review")
    locked = Queue.new
    release = Queue.new
    b_pid = Queue.new

    # A haelt die Sperre wie ein laufender erster Entscheid und gibt danach frei.
    thread_a = in_own_connection do
      ActiveRecord::Base.transaction do
        Event.lock.find(event.id)
        locked << true
        raise "Freigabesignal ausgeblieben" unless release.pop(timeout: TIMEOUT)

        Services::DecideEventReview.new(event: Event.find(event.id), actor: @curation,
                                        outcome: "released", note: "A").call
      end
    end
    assert locked.pop(timeout: TIMEOUT), "A hat die Sperre nicht erhalten"

    # B hat den Datensatz geladen, bevor A entschieden hat (veraltet: in_review).
    stale = Event.find(event.id)
    thread_b = in_own_connection do |connection|
      b_pid << connection.select_value("SELECT pg_backend_pid()")
      Services::DecideEventReview.new(event: stale, actor: @curation, outcome: "rejected", note: "B").call
    end

    pid = b_pid.pop(timeout: TIMEOUT)
    assert pid, "B hat nicht begonnen"
    assert wait_until { waiting_on_lock?(pid) }, "B muss auf die Sperre von A warten"
    release << true

    result_a = joined_value(thread_a)
    result_b = joined_value(thread_b)

    assert result_a.ok?, result_a.error
    refute result_b.ok?, "B darf nach Freigabe der Sperre nicht mehr entscheiden"
    assert_match(/nicht zulässig/, result_b.error)
    event.reload
    assert_equal "released", event.status
    reviews = EventReview.where(event: event)
    assert_equal 1, reviews.count
    assert_equal reviews.first.decided_at.to_i, event.released_at.to_i
    assert_equal 1, AuditEntry.where(subject_type: "Event", subject_id: event.id,
                                     action: "event.review_decided").count
  end

  test "gleichzeitige Freigabe und Ablehnung: genau ein Entscheid wird gespeichert" do
    event = create_event(@provider, status: "in_review")
    results = race(2) do |i|
      instance = Event.find(event.id)
      -> {
        Services::DecideEventReview.new(event: instance, actor: @curation,
                                        outcome: i.zero? ? "released" : "rejected", note: "R#{i}").call
      }
    end

    assert_equal 1, results.count(&:ok?), "genau ein erfolgreicher Uebergang"
    event.reload
    reviews = EventReview.where(event: event).to_a
    assert_equal 1, reviews.size
    winner = reviews.first
    assert_equal({ "released" => "released", "rejected" => "rejected" }.fetch(winner.outcome), event.status)
    if winner.outcome == "released"
      assert_equal winner.decided_at.to_i, event.released_at.to_i
    else
      assert_nil event.released_at, "abgelehntes Event darf keinen Freigabezeitpunkt tragen"
    end
    assert_equal 1, AuditEntry.where(subject_type: "Event", subject_id: event.id,
                                     action: "event.review_decided").count
  end

  test "gleichzeitige doppelte Einreichung: genau ein Uebergang" do
    event = create_event(@provider, status: "draft")
    results = race(2) do
      instance = Event.find(event.id)
      -> { Services::SubmitEventForReview.new(event: instance, actor: @provider_user).call }
    end

    assert_equal 1, results.count(&:ok?)
    assert_equal "in_review", event.reload.status
    assert_equal 1, AuditEntry.where(subject_type: "Event", subject_id: event.id,
                                     action: "event.submitted_for_review").count
  end

  test "gleichzeitige Verifikationseinreichung und Pruefentscheide beim Anbieter" do
    @other_provider = create_provider(status: "registered")
    user = @other_user = create_provider_user(@other_provider)
    submit = race(2) do
      instance = Provider.find(@other_provider.id)
      -> { Services::SubmitProviderForReview.new(provider: instance, actor: user).call }
    end
    assert_equal 1, submit.count(&:ok?)
    assert_equal 1, AuditEntry.where(subject_type: "Provider", subject_id: @other_provider.id,
                                     action: "provider.submitted_for_review").count

    decide = race(2) do |i|
      instance = Provider.find(@other_provider.id)
      -> {
        Services::DecideProviderReview.new(provider: instance, actor: @curation,
                                           outcome: i.zero? ? "verified" : "rejected", note: "R#{i}").call
      }
    end
    assert_equal 1, decide.count(&:ok?)
    assert_equal 1, ProviderReview.where(provider: @other_provider).count
    assert_includes %w[verified_active rejected], @other_provider.reload.status
  end

  private

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

  # Startet n Threads, die jeweils zuerst ihre (veraltete) Instanz laden und dann
  # gemeinsam auf ein Startsignal warten. Rueckgabe: Ergebnisse aller Threads.
  def race(count)
    ready = Queue.new
    go = Queue.new
    threads = Array.new(count) do |i|
      in_own_connection do
        action = yield(i)
        ready << true
        raise "Startsignal ausgeblieben" unless go.pop(timeout: TIMEOUT)

        action.call
      end
    end
    count.times { assert ready.pop(timeout: TIMEOUT), "Thread nicht bereit" }
    count.times { go << true }
    threads.map { |t| joined_value(t) }
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

  def waiting_on_lock?(pid)
    ActiveRecord::Base.connection.select_value(
      ActiveRecord::Base.sanitize_sql([ "SELECT wait_event_type FROM pg_stat_activity WHERE pid = ?", pid ])
    ) == "Lock"
  end
end
