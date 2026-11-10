require "test_helper"

# Befund 2 (Codepruefung PR #6): Zustandswechsel duerfen nicht auf einer veralteten,
# separat geladenen Instanz beruhen. Jede Instanz simuliert einen zweiten Request,
# der den Datensatz vor dem ersten Entscheid geladen hat.
class StaleInstanceTest < ActiveSupport::TestCase
  setup do
    @curation = create_curation_user
    @provider = create_provider
    @provider_user = create_provider_user(@provider)
  end

  test "DecideEventReview: konkurrierende Freigabe und Ablehnung – nur der erste gewinnt" do
    event = create_event(@provider, status: "in_review")
    first  = Event.find(event.id)
    second = Event.find(event.id) # veraltet: haelt noch "in_review"

    a = Services::DecideEventReview.new(event: first, actor: @curation, outcome: "released", note: "A").call
    b = Services::DecideEventReview.new(event: second, actor: @curation, outcome: "rejected", note: "B").call

    assert a.ok?, a.error
    refute b.ok?, "der zweite Entscheid auf veraltetem Stand muss abgewiesen werden"
    event.reload
    assert_equal "released", event.status
    assert_equal 1, EventReview.where(event: event).count
    assert_equal 1, AuditEntry.where(subject_type: "Event", subject_id: event.id, action: "event.review_decided").count
    review = EventReview.find_by!(event: event)
    assert_equal "released", review.outcome
    assert_equal review.decided_at.to_i, event.released_at.to_i, "Freigabezeitpunkt = Entscheidzeitpunkt"
  end

  test "DecideEventReview: veraltete Vollstaendigkeit erlaubt keine Freigabe" do
    event = create_event(@provider, status: "in_review")
    stale = Event.find(event.id)
    assert stale.completeness.submittable?
    Event.where(id: event.id).update_all(accessibility_info: nil) # Stand in der Datenbank aendert sich

    result = Services::DecideEventReview.new(event: stale, actor: @curation, outcome: "released", note: "x").call
    refute result.ok?, "Pruefung muss am aktuellen Datenbankstand erfolgen"
    assert_equal "in_review", event.reload.status
    assert_equal 0, EventReview.where(event: event).count
  end

  test "DecideProviderReview: konkurrierende Verifikation und Ablehnung – nur der erste gewinnt" do
    provider = create_provider(status: "in_review")
    first  = Provider.find(provider.id)
    second = Provider.find(provider.id)

    a = Services::DecideProviderReview.new(provider: first, actor: @curation, outcome: "verified", note: "A").call
    b = Services::DecideProviderReview.new(provider: second, actor: @curation, outcome: "rejected", note: "B").call

    assert a.ok?, a.error
    refute b.ok?
    assert_equal "verified_active", provider.reload.status
    assert_equal 1, ProviderReview.where(provider: provider).count
    assert_equal 1, AuditEntry.where(subject_type: "Provider", subject_id: provider.id, action: "provider.review_decided").count
  end

  test "SubmitEventForReview: doppelte Einreichung erzeugt genau einen Uebergang" do
    event = create_event(@provider, status: "draft")
    first  = Event.find(event.id)
    second = Event.find(event.id)

    a = Services::SubmitEventForReview.new(event: first, actor: @provider_user).call
    b = Services::SubmitEventForReview.new(event: second, actor: @provider_user).call

    assert a.ok?, a.error
    refute b.ok?
    assert_equal "in_review", event.reload.status
    assert_equal 1, AuditEntry.where(subject_type: "Event", subject_id: event.id, action: "event.submitted_for_review").count
  end

  test "SubmitEventForReview: Pruefstatus des Anbieters wird aktuell gelesen" do
    provider = create_provider(status: "in_review")
    user = create_provider_user(provider)
    event = create_event(provider, status: "draft")
    stale = Event.find(event.id)
    stale.provider # Anbieter im Zustand "in Pruefung" zwischengespeichert

    verified = Services::DecideProviderReview.new(provider: Provider.find(provider.id), actor: @curation,
                                                  outcome: "verified", note: "ok").call
    assert verified.ok?

    result = Services::SubmitEventForReview.new(event: stale, actor: user).call
    assert result.ok?, "massgeblich ist der aktuelle Pruefstatus des Anbieters: #{result.error}"
    assert_equal "in_review", event.reload.status
  end

  test "SubmitProviderForReview: doppelte Einreichung erzeugt genau einen Uebergang" do
    provider = create_provider(status: "registered")
    user = create_provider_user(provider)
    first  = Provider.find(provider.id)
    second = Provider.find(provider.id)

    a = Services::SubmitProviderForReview.new(provider: first, actor: user).call
    b = Services::SubmitProviderForReview.new(provider: second, actor: user).call

    assert a.ok?, a.error
    refute b.ok?
    assert_equal "in_review", provider.reload.status
    assert_equal 1, AuditEntry.where(subject_type: "Provider", subject_id: provider.id, action: "provider.submitted_for_review").count
  end
end
