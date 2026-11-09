require "test_helper"

# Neuer Befund 7 (gefunden bei der Browserpruefung): Das echte Formular sendet fuer
# nicht gewaehlte Auswahlfelder leere Zeichenketten. Die Datenbank-Pruefregeln fuer
# activity_level, payment_method und cancellation_model erlauben nur NULL oder
# gueltige Werte. Ohne Normalisierung scheitert jeder unvollstaendige Entwurf.
class BlankFormFieldsTest < ActionDispatch::IntegrationTest
  # Parameter wie sie der Browser beim Absenden des leeren Formulars sendet.
  BLANK_FORM = {
    "title" => "Unvollstaendig aus dem Formular", "short_description" => "", "category" => "",
    "language" => "de", "event_date" => "", "start_time" => "", "end_time" => "",
    "booking_deadline_at" => "", "decision_point_at" => "", "venue_name" => "",
    "full_address" => "", "city_region" => "", "price_chf" => "", "payment_method" => "",
    "cancellation_model" => "", "min_participants" => "", "max_participants" => "",
    "synthetic_booked_count" => "0", "contact_option" => "", "accessibility_info" => "",
    "activity_level_relevant" => "0", "activity_level" => "",
    "required_equipment_relevant" => "0", "required_equipment" => "",
    "catering_relevant" => "0", "catering_info" => "", "age_focus_relevant" => "0",
    "age_focus" => "", "qualification_evidence_relevant" => "0", "qualification_evidence" => "",
    "public_transport_info" => "", "parking_info" => "", "event_image_note" => ""
  }.freeze

  setup do
    @provider = create_provider
    sign_in_as(create_provider_user(@provider))
  end

  test "unvollstaendiger Entwurf aus dem vollstaendigen, leeren Formular wird gespeichert" do
    assert_difference -> { Event.count }, 1 do
      post provider_events_path, params: { event: BLANK_FORM }
    end
    event = Event.order(:id).last
    assert_redirected_to provider_event_path(event)
    assert_nil event.activity_level
    assert_nil event.payment_method
    assert_nil event.cancellation_model
  end

  test "Bearbeiten mit leeren Auswahlfeldern wird gespeichert" do
    event = create_event(@provider, status: "draft")
    patch provider_event_path(event), params: { event: BLANK_FORM.merge("title" => "Geleert") }
    assert_redirected_to provider_event_path(event)
    event.reload
    assert_equal "Geleert", event.title
    assert_nil event.payment_method
    assert_nil event.cancellation_model
  end
end
