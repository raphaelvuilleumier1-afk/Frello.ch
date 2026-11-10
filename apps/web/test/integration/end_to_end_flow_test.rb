require "test_helper"

# Durchgaengiger Ablauf JRN-013 / JRN-014 im Prototypumfang,
# einschliesslich Auditprotokollierung (AC-045).
class EndToEndFlowTest < ActionDispatch::IntegrationTest
  setup do
    @curation = create_curation_user
  end

  test "Anbieter erfassen, pruefen, Event anlegen, einreichen, freigeben, im Katalog sehen" do
    # 1. Kuration erfasst synthetischen Anbieter (ST-001 registriert)
    sign_in_as(@curation)
    post curation_providers_path, params: { provider: {
      organisation_name: "Testanbieter Ablauf", provider_type: "institutional",
      contact_person_name: "Testperson", contact_email: "t@prototyp.invalid",
      contact_phone: "+41 00 000 00 00", business_address: "Teststrasse 1",
      business_postal_code: "8000", business_city: "Zürich"
    } }
    provider = Provider.find_by!(organisation_name: "Testanbieter Ablauf")
    assert_equal "registered", provider.status
    assert provider.synthetic

    # 2. Der ZUGEORDNETE Anbieter reicht seine Verifikation ein (ST-001 in Pruefung).
    #    Das Anbieter-Testkonto wird als synthetische Testvoraussetzung angelegt
    #    (keine Selbstregistrierung).
    user = create_provider_user(provider)
    delete sign_out_path
    sign_in_as(user)
    post provider_verification_path
    assert_equal "in_review", provider.reload.status
    delete sign_out_path
    sign_in_as(@curation)

    # 3. Pruefergebnis erfassen (ST-001 verifiziert/aktiv) mit DO-006-Nachweis
    post decide_curation_provider_path(provider), params: {
      step: "verify", note: "Synthetischer Prüfvermerk.",
      register_check: "1", identity_check: "1", bank_account_check: "1"
    }
    assert_equal "verified_active", provider.reload.status
    review = provider.latest_review
    assert_equal "verified", review.outcome
    assert review.register_check
    refute review.qualification_check

    # 4. Anbieter legt Evententwurf an (ST-002 Entwurf)
    delete sign_out_path
    sign_in_as(user)
    post provider_events_path, params: { event: ActiveSupport::TestCase::COMPLETE_EVENT.merge(
      title: "Ablaufangebot", event_date: 30.days.from_now.to_date.to_s,
      start_time: "14:00", end_time: "16:00",
      booking_deadline_at: 27.days.from_now.to_fs(:db),
      decision_point_at: 28.days.from_now.to_fs(:db)
    ) }
    event = Event.find_by!(title: "Ablaufangebot")
    assert_equal "draft", event.status
    assert_equal provider.id, event.provider_id

    # 5. Einreichen (ST-002 in Pruefung)
    post submit_provider_event_path(event)
    assert_equal "in_review", event.reload.status

    # 6. Kuration gibt frei (ST-002 freigegeben)
    delete sign_out_path
    sign_in_as(@curation)
    post decide_curation_event_path(event), params: {
      outcome: "released", note: "Pflichtangaben vollständig, Beschreibung verständlich."
    }
    assert_equal "released", event.reload.status

    # 7. Im Katalog sichtbar
    delete sign_out_path
    get catalog_path
    assert_match "Ablaufangebot", response.body
    get catalog_event_path(event)
    assert_response :success

    # 8. Auditprotokoll vollstaendig (AC-045)
    actions = AuditEntry.order(:id).pluck(:action)
    assert_includes actions, "provider.registered"
    assert_includes actions, "provider.submitted_for_review"
    submitted = AuditEntry.find_by!(action: "provider.submitted_for_review")
    assert_equal "provider", submitted.actor_role
    assert_equal user.id, submitted.actor_id
    assert_includes actions, "provider.review_decided"
    assert_includes actions, "event.draft_created"
    assert_includes actions, "event.submitted_for_review"
    assert_includes actions, "event.review_decided"

    entry = AuditEntry.where(action: "event.review_decided").last
    assert_equal "in_review", entry.from_state
    assert_equal "released", entry.to_state
    assert_equal @curation.display_name, entry.actor_label
    assert_equal "curation", entry.actor_role
    assert_match "Pflichtangaben vollständig", entry.note
  end

  test "zurueckgegebenes Event ist im Prototyp weder bearbeitbar noch erneut einreichbar" do
    provider = create_provider
    user = create_provider_user(provider)
    event = create_event(provider, status: "in_review", title: "Rueckgabe")

    sign_in_as(@curation)
    post decide_curation_event_path(event), params: {
      outcome: "returned", note: "Bitte die Beschreibung verständlicher fassen."
    }
    assert_equal "returned_for_revision", event.reload.status

    delete sign_out_path
    sign_in_as(user)
    get provider_event_path(event)
    assert_response :success
    assert_match "Bitte die Beschreibung verständlicher fassen.", response.body,
      "der Pruefvermerk bleibt fuer den Anbieter sichtbar"
    assert_match "fachlich noch nicht", response.body

    get edit_provider_event_path(event)
    assert_response :forbidden
    patch provider_event_path(event), params: { event: { short_description: "Geaendert" } }
    assert_response :forbidden
    post submit_provider_event_path(event)
    assert_response :unprocessable_entity

    event.reload
    assert_equal "returned_for_revision", event.status
    refute_equal "Geaendert", event.short_description
  end

  test "unvollstaendiger Entwurf laesst sich speichern aber nicht einreichen" do
    provider = create_provider
    user = create_provider_user(provider)
    sign_in_as(user)

    post provider_events_path, params: { event: { title: "Nur ein Titel" } }
    event = Event.find_by!(title: "Nur ein Titel")
    assert_equal "draft", event.status, "unvollstaendiger Entwurf muss speicherbar sein"

    post submit_provider_event_path(event)
    assert_response :unprocessable_entity
    assert_equal "draft", event.reload.status
    assert_match "Pflichtangaben fehlen", response.body
    assert_match "fehlt", response.body
  end

  test "Auditprotokoll ist nur lesend" do
    provider = create_provider
    AuditTrail.record!(actor: @curation, subject: provider, action: "provider.registered",
                       to_state: "registered")
    entry = AuditEntry.last
    assert entry.readonly?
    assert_raises(ActiveRecord::ReadOnlyRecord) { entry.update!(note: "manipuliert") }
  end
end
