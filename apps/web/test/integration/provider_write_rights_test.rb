require "test_helper"

# Befund 1 (Codepruefung PR #6): Schreibrechte an Events nur fuer GEPRUEFTE Anbieter.
# FR-034: "Gepruefte Anbieter legen Events als Entwurf … an".
# 02_ROLES_PERMISSIONS.md §5: "Schreib-/Verwaltungsrechte an Events erst nach
# erfolgreicher Anbieterpruefung (D-08)".
class ProviderWriteRightsTest < ActionDispatch::IntegrationTest
  NOT_VERIFIED = %w[registered in_review rejected suspended].freeze

  def setup_provider(status)
    provider = create_provider(status: status)
    user = create_provider_user(provider)
    draft = create_event(provider, status: "draft", title: "Bestehender Entwurf #{status}")
    [ provider, user, draft ]
  end

  NOT_VERIFIED.each do |status|
    test "#{status}: Entwurf anlegen ist gesperrt, auch per direktem Request" do
      _provider, user, _draft = setup_provider(status)
      sign_in_as(user)

      get new_provider_event_path
      assert_response :forbidden
      assert_match "erst anlegen oder bearbeiten", response.body

      assert_no_difference -> { Event.count } do
        post provider_events_path, params: { event: { title: "Direkt angelegt" } }
      end
      assert_response :forbidden
    end

    test "#{status}: Entwurf bearbeiten ist gesperrt, auch per direktem Request" do
      _provider, user, draft = setup_provider(status)
      sign_in_as(user)

      get edit_provider_event_path(draft)
      assert_response :forbidden
      patch provider_event_path(draft), params: { event: { title: "Geaendert" } }
      assert_response :forbidden
      assert_equal "Bestehender Entwurf #{status}", draft.reload.title
    end

    test "#{status}: Einreichung bleibt abgewiesen, Zustand unveraendert" do
      _provider, user, draft = setup_provider(status)
      sign_in_as(user)
      assert_no_difference -> { AuditEntry.count } do
        post submit_provider_event_path(draft)
      end
      assert_response :unprocessable_entity
      assert_equal "draft", draft.reload.status
    end

    test "#{status}: Lesen der eigenen Events bleibt moeglich, ohne Schreibschaltflaechen" do
      _provider, user, draft = setup_provider(status)
      sign_in_as(user)

      get provider_events_path
      assert_response :success
      assert_match draft.title, response.body
      refute_match "Neuen Evententwurf anlegen", response.body
      refute_match "Sie können Entwürfe anlegen", response.body

      get provider_event_path(draft)
      assert_response :success
      refute_match "Entwurf bearbeiten", response.body
      refute_match "Zur Prüfung einreichen", response.body
    end
  end

  test "manipulierter Request: nicht geprueftes Konto kann keinen Entwurf fuer einen geprueften Anbieter anlegen" do
    verified = create_provider(status: "verified_active")
    _provider, user, _draft = setup_provider("registered")
    sign_in_as(user)
    assert_no_difference -> { Event.count } do
      post provider_events_path, params: { event: { title: "Untergeschoben", provider_id: verified.id } }
    end
    assert_response :forbidden
  end

  test "registriert: eigene Verifikationseinreichung funktioniert weiterhin" do
    provider, user, _draft = setup_provider("registered")
    sign_in_as(user)
    post provider_verification_path
    assert_redirected_to provider_events_path
    assert_equal "in_review", provider.reload.status
  end

  test "geprueft: anlegen, bearbeiten und einreichen sind moeglich" do
    provider = create_provider(status: "verified_active")
    user = create_provider_user(provider)
    sign_in_as(user)

    get new_provider_event_path
    assert_response :success
    assert_difference -> { Event.count }, 1 do
      post provider_events_path, params: { event: { title: "Neu durch gepruefte Organisation" } }
    end
    event = Event.order(:id).last
    assert_equal provider.id, event.provider_id
    assert_equal "draft", event.status

    get edit_provider_event_path(event)
    assert_response :success
    patch provider_event_path(event), params: { event: COMPLETE_EVENT.merge(
      event_date: 30.days.from_now.to_date.to_s, start_time: "10:00", end_time: "12:00",
      booking_deadline_at: 27.days.from_now.to_fs(:db), decision_point_at: 28.days.from_now.to_fs(:db)
    ) }
    assert_redirected_to provider_event_path(event)
    assert_equal "Testangebot", event.reload.title

    post submit_provider_event_path(event)
    assert_equal "in_review", event.reload.status

    get provider_events_path
    assert_match "Neuen Evententwurf anlegen", response.body
  end

  # Testluecke aus der Codepruefung: Bearbeitung im Zustand "in Pruefung".
  test "geprueft: Event in Pruefung ist nicht bearbeitbar" do
    provider = create_provider(status: "verified_active")
    user = create_provider_user(provider)
    event = create_event(provider, status: "in_review", title: "In Pruefung")
    sign_in_as(user)

    get edit_provider_event_path(event)
    assert_response :forbidden
    patch provider_event_path(event), params: { event: { title: "Geaendert" } }
    assert_response :forbidden
    assert_equal "In Pruefung", event.reload.title
    assert_equal "in_review", event.status
  end
end
