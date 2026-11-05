require "test_helper"

# ST-001 "registriert -> in Pruefung": Ausloeser "Anbieter reicht Verifikation ein",
# Berechtigung Anbieter (docs/product/06_STATE_MODELS.md). Die Kuration entscheidet
# danach ueber verifiziert/abgelehnt. Geprueft werden alle Aufrufwege.
class ProviderVerificationTest < ActionDispatch::IntegrationTest
  setup do
    @provider_a = create_provider(status: "registered")
    @provider_b = create_provider(status: "registered")
    @user_a = create_provider_user(@provider_a)
    @user_b = create_provider_user(@provider_b)
    @curation = create_curation_user
  end

  # --- zulaessig -------------------------------------------------------------

  test "zugeordneter Anbieter reicht seine Verifikation ein und es wird protokolliert" do
    sign_in_as(@user_a)
    assert_difference -> { AuditEntry.where(action: "provider.submitted_for_review").count }, 1 do
      post provider_verification_path
    end
    assert_redirected_to provider_events_path
    assert_equal "in_review", @provider_a.reload.status
    entry = AuditEntry.where(action: "provider.submitted_for_review").last
    assert_equal @user_a.id, entry.actor_id
    assert_equal "provider", entry.actor_role
    assert_equal "registered", entry.from_state
    assert_equal "in_review", entry.to_state
    assert_equal "registered", @provider_b.reload.status, "fremder Anbieter bleibt unberuehrt"
  end

  test "Schaltflaeche erscheint nur im Zustand registriert und ist beschriftet" do
    sign_in_as(@user_a)
    get provider_events_path
    assert_match "Verifikation zur Prüfung einreichen", response.body
    assert_match %r{<form[^>]*action="/anbieter/verifikation"}, response.body

    @provider_a.update!(status: "in_review")
    get provider_events_path
    refute_match "Verifikation zur Prüfung einreichen", response.body
    assert_match "liegt bei Frello zur Prüfung", response.body
  end

  # --- fremder Anbieter ------------------------------------------------------

  test "Anbieter kann keinen fremden Anbieter einreichen – Dienstebene" do
    result = Services::SubmitProviderForReview.new(provider: @provider_b, actor: @user_a).call
    refute result.ok?
    assert_equal "registered", @provider_b.reload.status
  end

  test "Anbieter kann keinen fremden Anbieter ueber Parameter adressieren" do
    sign_in_as(@user_a)
    post provider_verification_path, params: { provider_id: @provider_b.id, id: @provider_b.id }
    assert_equal "registered", @provider_b.reload.status, "Parameter duerfen den Anbieter nicht bestimmen"
    assert_equal "in_review", @provider_a.reload.status, "nur der eigene Anbieter wird eingereicht"
  end

  # --- nicht berechtigte Kuration -------------------------------------------

  test "Kuration kann nicht stellvertretend einreichen – Dienstebene" do
    assert_no_difference -> { AuditEntry.count } do
      result = Services::SubmitProviderForReview.new(provider: @provider_a, actor: @curation).call
      refute result.ok?
    end
    assert_equal "registered", @provider_a.reload.status
  end

  test "Kuration kann den Anbieter-Aufrufweg nicht nutzen" do
    sign_in_as(@curation)
    post provider_verification_path
    assert_response :forbidden
    assert_equal "registered", @provider_a.reload.status
  end

  test "frueherer Kurationsschritt submit_for_review ist nicht mehr erreichbar" do
    sign_in_as(@curation)
    assert_no_difference -> { AuditEntry.count } do
      post decide_curation_provider_path(@provider_a), params: { step: "submit_for_review" }
      assert_response :unprocessable_entity
    end
    assert_equal "registered", @provider_a.reload.status
  end

  test "Kurationsansicht eines registrierten Anbieters bietet keine Einreichung an" do
    sign_in_as(@curation)
    get curation_provider_path(@provider_a)
    assert_response :success
    refute_match "Verifikation einreichen", response.body
    assert_match "reicht der <strong>Anbieter</strong> seine Verifikation selbst ein", response.body
  end

  # --- weitere Abweisungen, Zustand unveraendert ----------------------------

  test "ohne Anmeldung keine Einreichung" do
    post provider_verification_path
    assert_redirected_to sign_in_path
    assert_equal "registered", @provider_a.reload.status
  end

  test "erneute Einreichung im Zustand in Pruefung wird abgewiesen" do
    @provider_a.update!(status: "in_review")
    sign_in_as(@user_a)
    assert_no_difference -> { AuditEntry.count } do
      post provider_verification_path
    end
    assert_equal "in_review", @provider_a.reload.status
  end

  test "abgelehnter Anbieter kann nicht erneut einreichen" do
    @provider_a.update!(status: "rejected")
    sign_in_as(@user_a)
    post provider_verification_path
    assert_equal "rejected", @provider_a.reload.status
  end

  # --- Pruefentscheid und Selbstfreigabeverbot ------------------------------

  test "Anbieter kann den eigenen Pruefentscheid nicht ausloesen" do
    @provider_a.update!(status: "in_review")
    sign_in_as(@user_a)
    assert_no_difference -> { ProviderReview.count } do
      post decide_curation_provider_path(@provider_a), params: { step: "verify", note: "selbst" }
      assert_response :forbidden
    end
    assert_equal "in_review", @provider_a.reload.status

    result = Services::DecideProviderReview.new(provider: @provider_a, actor: @user_a,
                                                outcome: "verified", note: "selbst").call
    refute result.ok?
    assert_equal "in_review", @provider_a.reload.status
  end

  test "Kuration entscheidet nur nach Einreichung" do
    sign_in_as(@curation)
    post decide_curation_provider_path(@provider_a), params: { step: "verify", note: "zu frueh" }
    assert_response :unprocessable_entity
    assert_equal "registered", @provider_a.reload.status
  end
end
