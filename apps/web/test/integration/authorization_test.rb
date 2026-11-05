require "test_helper"

# Rollentrennung, Eigentuemerschaft und Umgehungsversuche
# (02_ROLES_PERMISSIONS.md Paragraf 3, D-33, AC-032, AC-035).
class AuthorizationTest < ActionDispatch::IntegrationTest
  setup do
    @provider_a = create_provider
    @provider_b = create_provider
    @user_a = create_provider_user(@provider_a)
    @user_b = create_provider_user(@provider_b)
    @curation = create_curation_user
    @event_a = create_event(@provider_a, title: "Entwurf von A")
    @event_b = create_event(@provider_b, title: "Entwurf von B")
  end

  # --- Ohne Anmeldung --------------------------------------------------------

  test "interne Bereiche sind ohne Anmeldung nicht erreichbar" do
    [ provider_events_path, curation_providers_path, curation_events_path,
      curation_audit_entries_path ].each do |path|
      get path
      assert_redirected_to sign_in_path, "#{path} muss eine Anmeldung verlangen"
    end
  end

  test "Entscheid ohne Anmeldung wird abgewiesen" do
    post decide_curation_event_path(@event_a), params: { outcome: "released", note: "x" }
    assert_redirected_to sign_in_path
    assert_equal "draft", @event_a.reload.status
  end

  # --- Fremde Datensaetze ----------------------------------------------------

  test "Anbieter sieht fremden Entwurf nicht" do
    sign_in_as(@user_a)
    get provider_event_path(@event_b)
    assert_response :forbidden
    refute_match "Entwurf von B", response.body
  end

  test "Anbieter kann fremden Entwurf nicht bearbeiten" do
    sign_in_as(@user_a)
    get edit_provider_event_path(@event_b)
    assert_response :forbidden

    patch provider_event_path(@event_b), params: { event: { title: "Fremd geaendert" } }
    assert_response :forbidden
    assert_equal "Entwurf von B", @event_b.reload.title
  end

  test "Anbieter kann fremden Entwurf nicht einreichen" do
    sign_in_as(@user_a)
    post submit_provider_event_path(@event_b)
    assert_response :forbidden
    assert_equal "draft", @event_b.reload.status
  end

  test "Anbieterliste zeigt ausschliesslich eigene Events" do
    sign_in_as(@user_a)
    get provider_events_path
    assert_match "Entwurf von A", response.body
    refute_match "Entwurf von B", response.body
  end

  # --- Rollentrennung --------------------------------------------------------

  test "Anbieter erreicht den Kurationsbereich nicht" do
    sign_in_as(@user_a)
    [ curation_providers_path, curation_events_path, curation_audit_entries_path ].each do |path|
      get path
      assert_response :forbidden, "#{path} darf fuer Anbieter nicht erreichbar sein"
    end
  end

  test "D-33 Anbieter kann sich nicht selbst freigeben" do
    @event_a.update!(status: "in_review")
    sign_in_as(@user_a)
    assert_no_difference -> { EventReview.count } do
      post decide_curation_event_path(@event_a), params: { outcome: "released", note: "Selbst" }
      assert_response :forbidden
    end
    assert_equal "in_review", @event_a.reload.status
  end

  test "Kuration erreicht den Anbieterbereich nicht" do
    sign_in_as(@curation)
    get provider_events_path
    assert_response :forbidden
  end

  # --- Manipulierte Parameter ------------------------------------------------

  test "Anbieter kann die Eigentuemerschaft nicht ueber Parameter umhaengen" do
    sign_in_as(@user_a)
    post provider_events_path, params: { event: { title: "Untergeschoben",
                                                  provider_id: @provider_b.id } }
    created = Event.find_by(title: "Untergeschoben")
    assert_not_nil created
    assert_equal @provider_a.id, created.provider_id,
      "provider_id aus dem Request darf nicht uebernommen werden"
  end

  test "Anbieter kann den Zustand nicht ueber Parameter setzen" do
    sign_in_as(@user_a)
    post provider_events_path, params: { event: { title: "Direktfreigabe",
                                                  status: "released" } }
    created = Event.find_by(title: "Direktfreigabe")
    assert_not_nil created
    assert_equal "draft", created.status, "status aus dem Request darf nicht uebernommen werden"
  end

  test "Anbieter kann die externe Buchungskennzeichnung nicht setzen D-39" do
    sign_in_as(@user_a)
    patch provider_event_path(@event_a), params: {
      event: { title: "Mit Fremdbuchung", external_booking_marker: "1" }
    }
    assert_equal false, @event_a.reload.external_booking_marker
  end

  test "bereits freigegebenes Event ist nicht nachtraeglich bearbeitbar" do
    @event_a.update!(status: "released")
    sign_in_as(@user_a)
    get edit_provider_event_path(@event_a)
    assert_response :forbidden
    patch provider_event_path(@event_a), params: { event: { title: "Nachtraeglich" } }
    assert_response :forbidden
    assert_equal "Entwurf von A", @event_a.reload.title
  end

  test "unbekannter Entscheidwert wird abgewiesen" do
    @event_a.update!(status: "in_review")
    sign_in_as(@curation)
    post decide_curation_event_path(@event_a), params: { outcome: "freigeben_bitte", note: "x" }
    assert_response :unprocessable_entity
    assert_equal "in_review", @event_a.reload.status
  end

  test "Entscheid ueber ein nicht eingereichtes Event wird abgewiesen" do
    sign_in_as(@curation)
    post decide_curation_event_path(@event_a), params: { outcome: "released", note: "Direkt" }
    assert_response :unprocessable_entity
    assert_equal "draft", @event_a.reload.status
  end

  test "nicht verifizierter Anbieter kann nicht einreichen AC-032" do
    unverified = create_provider(status: "registered")
    user = create_provider_user(unverified)
    event = create_event(unverified)
    sign_in_as(user)
    post submit_provider_event_path(event)
    assert_response :unprocessable_entity
    assert_equal "draft", event.reload.status
  end

  test "AC-033 privater Anbietertyp ist nicht waehlbar" do
    sign_in_as(@curation)
    get new_curation_provider_path
    assert_response :success
    refute_match(/value="private"/, response.body)
    refute_match(/Privat/, response.body.scan(/<select[^>]*provider_type.*?<\/select>/m).join)

    post curation_providers_path, params: { provider: {
      organisation_name: "Privater Gastgeber", provider_type: "private",
      contact_person_name: "X", contact_email: "x@prototyp.invalid",
      contact_phone: "+41", business_address: "a", business_postal_code: "1", business_city: "b"
    } }
    assert_response :unprocessable_entity
    assert_nil Provider.find_by(organisation_name: "Privater Gastgeber")
  end
end
