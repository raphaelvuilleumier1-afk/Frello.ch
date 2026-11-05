require "test_helper"

# Test-Schalter: laesst AuditTrail.record! gezielt fehlschlagen, ohne das
# Produktionsverhalten dauerhaft zu veraendern.
module AuditTrailFailSwitch
  def record!(**kwargs)
    if Thread.current[:frello_test_fail_audit]
      raise ActiveRecord::RecordInvalid, AuditEntry.new
    end

    super
  end
end
AuditTrail.singleton_class.prepend(AuditTrailFailSwitch)

# Prueft Einreichung und Kurationsentscheid einschliesslich Audit und Atomaritaet.
class EventReviewTest < ActiveSupport::TestCase
  setup do
    @provider = create_provider
    @provider_user = create_provider_user(@provider)
    @curation = create_curation_user
  end

  # --- Einreichung -----------------------------------------------------------

  test "vollstaendiger Entwurf eines verifizierten Anbieters wird eingereicht und protokolliert" do
    event = create_event(@provider)
    assert_difference -> { AuditEntry.count }, 1 do
      result = Services::SubmitEventForReview.new(event: event, actor: @provider_user).call
      assert result.ok?, result.error
    end
    assert_equal "in_review", event.reload.status
    entry = AuditEntry.recent_first.first
    assert_equal "event.submitted_for_review", entry.action
    assert_equal "draft", entry.from_state
    assert_equal "in_review", entry.to_state
  end

  test "unvollstaendiger Entwurf wird nicht eingereicht BR-005 EXC-013" do
    event = create_event(@provider, complete: false, title: "Nur ein Titel")
    assert_no_difference -> { AuditEntry.count } do
      result = Services::SubmitEventForReview.new(event: event, actor: @provider_user).call
      refute result.ok?
      assert result.missing.any?
    end
    assert_equal "draft", event.reload.status
  end

  test "nicht verifizierter Anbieter kann nicht einreichen AC-032" do
    unverified = create_provider(status: "registered")
    user = create_provider_user(unverified)
    event = create_event(unverified)
    result = Services::SubmitEventForReview.new(event: event, actor: user).call
    refute result.ok?
    assert_match(/nicht verifiziert/, result.error)
    assert_equal "draft", event.reload.status
  end

  test "fremder Anbieter kann einen Entwurf nicht einreichen" do
    other_user = create_provider_user(create_provider)
    event = create_event(@provider)
    result = Services::SubmitEventForReview.new(event: event, actor: other_user).call
    refute result.ok?
    assert_equal "draft", event.reload.status
  end

  test "Kuration kann nicht an Stelle des Anbieters einreichen" do
    event = create_event(@provider)
    result = Services::SubmitEventForReview.new(event: event, actor: @curation).call
    refute result.ok?
    assert_equal "draft", event.reload.status
  end

  # --- Kurationsentscheid ----------------------------------------------------

  test "Kuration gibt frei, erzeugt Pruefnachweis und Auditeintrag" do
    event = create_event(@provider, status: "in_review")
    assert_difference [ -> { EventReview.count }, -> { AuditEntry.count } ], 1 do
      result = Services::DecideEventReview.new(event: event, actor: @curation,
                                               outcome: "released", note: "Geprüft.").call
      assert result.ok?, result.error
    end
    event.reload
    assert_equal "released", event.status
    assert_not_nil event.released_at
    assert_equal "manuell durch Person (D-33)", AuditEntry.recent_first.first.details["decision_mode"]
  end

  test "alle drei Ergebnisse sind moeglich AC-035" do
    { "released" => "released", "rejected" => "rejected",
      "returned" => "returned_for_revision" }.each do |outcome, state|
      event = create_event(@provider, status: "in_review")
      result = Services::DecideEventReview.new(event: event, actor: @curation,
                                               outcome: outcome, note: "Vermerk").call
      assert result.ok?, result.error
      assert_equal state, event.reload.status
    end
  end

  test "Anbieter kann nicht entscheiden D-33" do
    event = create_event(@provider, status: "in_review")
    assert_no_difference -> { EventReview.count } do
      result = Services::DecideEventReview.new(event: event, actor: @provider_user,
                                               outcome: "released", note: "x").call
      refute result.ok?
    end
    assert_equal "in_review", event.reload.status
  end

  test "Freigabe ohne vollstaendige Pflichtangaben ist ausgeschlossen BR-005" do
    event = create_event(@provider, status: "in_review", complete: false, title: "Titel")
    assert_no_difference [ -> { EventReview.count }, -> { AuditEntry.count } ] do
      result = Services::DecideEventReview.new(event: event, actor: @curation,
                                               outcome: "released", note: "Trotzdem freigeben").call
      refute result.ok?
      assert_match(/Pflichtangaben fehlen/, result.error)
    end
    assert_equal "in_review", event.reload.status
    assert_nil event.released_at
  end

  test "Entscheid ohne Pruefvermerk wird abgewiesen" do
    event = create_event(@provider, status: "in_review")
    result = Services::DecideEventReview.new(event: event, actor: @curation,
                                             outcome: "released", note: "   ").call
    refute result.ok?
    assert_equal "in_review", event.reload.status
  end

  test "ein Entwurf kann nicht ohne Pruefschritt freigegeben werden" do
    event = create_event(@provider, status: "draft")
    result = Services::DecideEventReview.new(event: event, actor: @curation,
                                             outcome: "released", note: "Direkt").call
    refute result.ok?
    assert_equal "draft", event.reload.status
  end

  test "fehlgeschlagener Entscheid hinterlaesst keinen Freigabezustand und kein Pruefergebnis" do
    event = create_event(@provider, status: "in_review")
    # Fehler beim Schreiben des Auditeintrags -> gesamte Transaktion faellt zurueck.
    Thread.current[:frello_test_fail_audit] = true
    begin
      result = Services::DecideEventReview.new(event: event, actor: @curation,
                                               outcome: "released", note: "Vermerk").call
      refute result.ok?
    ensure
      Thread.current[:frello_test_fail_audit] = nil
    end
    event.reload
    assert_equal "in_review", event.status, "Zustand darf nicht freigegeben sein"
    assert_nil event.released_at
    assert_equal 0, EventReview.where(event: event).count, "kein verwaistes Pruefergebnis"
    assert_equal 0, AuditEntry.where(subject_type: "Event", subject_id: event.id).count
  end

  test "zurueckgegebener Entwurf kann nicht erneut eingereicht werden" do
    event = create_event(@provider, status: "returned_for_revision")
    assert_no_difference -> { AuditEntry.count } do
      result = Services::SubmitEventForReview.new(event: event, actor: @provider_user).call
      refute result.ok?
      assert_match(/nicht zulässig/, result.error)
    end
    assert_equal "returned_for_revision", event.reload.status
  end
end
