require "test_helper"

# Befund 5: Erzeugung und zugehoeriger Auditeintrag entstehen gemeinsam oder gar nicht.
class AtomicCreateTest < ActionDispatch::IntegrationTest
  test "Evententwurf: schlaegt das Audit fehl, bleibt kein Entwurf ohne Auditeintrag zurueck" do
    provider = create_provider
    user = create_provider_user(provider)
    sign_in_as(user)

    with_failing_audit do
      assert_no_difference [ -> { Event.count }, -> { AuditEntry.count } ] do
        post provider_events_path, params: { event: { title: "Ohne Audit" } }
      end
    end
    assert_response :unprocessable_entity
    assert_match "konnte nicht gespeichert werden", response.body
    assert_nil Event.find_by(title: "Ohne Audit")
  end

  test "Evententwurf: im Normalfall entstehen Entwurf und Auditeintrag gemeinsam" do
    provider = create_provider
    sign_in_as(create_provider_user(provider))
    assert_difference [ -> { Event.count }, -> { AuditEntry.where(action: "event.draft_created").count } ], 1 do
      post provider_events_path, params: { event: { title: "Mit Audit" } }
    end
  end

  test "Anbieteranlage: schlaegt das Audit fehl, bleibt kein Anbieter ohne Auditeintrag zurueck" do
    sign_in_as(create_curation_user)
    params = { provider: {
      organisation_name: "Ohne Audit AG", provider_type: "commercial",
      contact_person_name: "Testperson", contact_email: "t@prototyp.invalid",
      contact_phone: "+41 00 000 00 00", business_address: "Teststrasse 1",
      business_postal_code: "8000", business_city: "Zürich"
    } }
    with_failing_audit do
      assert_no_difference [ -> { Provider.count }, -> { AuditEntry.count } ] do
        post curation_providers_path, params: params
      end
    end
    assert_response :unprocessable_entity
    assert_match "konnte nicht erfasst werden", response.body

    assert_difference [ -> { Provider.count }, -> { AuditEntry.where(action: "provider.registered").count } ], 1 do
      post curation_providers_path, params: params
    end
  end
end
