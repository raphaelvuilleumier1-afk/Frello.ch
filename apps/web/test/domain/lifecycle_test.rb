require "test_helper"

# Prueft die Zustandsmodelle ST-001 und ST-002 (Teilmenge).
class LifecycleTest < ActiveSupport::TestCase
  test "ST-001 erlaubte Uebergaenge" do
    assert ProviderLifecycle.allowed?("registered", "in_review", role: "provider")
    assert ProviderLifecycle.allowed?("in_review", "verified_active", role: "curation")
    assert ProviderLifecycle.allowed?("in_review", "rejected", role: "curation")
  end

  test "ST-001 registriert zu in Pruefung ist allein dem Anbieter vorbehalten" do
    assert ProviderLifecycle.allowed?("registered", "in_review", role: "provider")
    refute ProviderLifecycle.allowed?("registered", "in_review", role: "curation"),
      "die Kuration hat keine stellvertretende Einreichungsberechtigung (ST-001)"
    assert_equal %w[provider], ProviderLifecycle::TRANSITIONS[%w[registered in_review]][:roles]
  end

  test "ST-001 verbotene Uebergaenge und falsche Rollen" do
    refute ProviderLifecycle.allowed?("registered", "verified_active", role: "curation"),
      "Pruefung darf nicht uebersprungen werden"
    refute ProviderLifecycle.allowed?("in_review", "verified_active", role: "provider"),
      "Anbieter darf sich nicht selbst verifizieren"
    refute ProviderLifecycle.allowed?("rejected", "verified_active", role: "curation")
    refute ProviderLifecycle.allowed?("verified_active", "registered", role: "curation")
  end

  test "ST-002 erlaubte Uebergaenge im Prototypumfang" do
    assert EventLifecycle.allowed?("draft", "in_review", role: "provider")
    assert EventLifecycle.allowed?("in_review", "released", role: "curation")
    assert EventLifecycle.allowed?("in_review", "rejected", role: "curation")
    assert EventLifecycle.allowed?("in_review", "returned_for_revision", role: "curation")
  end

  test "ST-002 verbotene Uebergaenge" do
    refute EventLifecycle.allowed?("draft", "released", role: "curation"),
      "Freigabe ohne Pruefschritt ist unzulaessig"
    refute EventLifecycle.allowed?("draft", "released", role: "provider")
    refute EventLifecycle.allowed?("in_review", "released", role: "provider"),
      "Anbieter darf sich nicht selbst freigeben (D-33)"
    refute EventLifecycle.allowed?("rejected", "released", role: "curation")
    refute EventLifecycle.allowed?("released", "draft", role: "provider")
    refute EventLifecycle.allowed?("returned_for_revision", "released", role: "curation")
  end

  test "ST-002 zurueckgegeben ist mangels Fachquelle ein Endzustand" do
    %w[provider curation].each do |role|
      EventLifecycle::STATES.each do |target|
        refute EventLifecycle.allowed?("returned_for_revision", target, role: role),
          "kein ausgehender Uebergang aus zurueckgegeben (#{role} -> #{target})"
      end
    end
  end

  test "spaetere ST-002-Zustaende sind nicht Bestandteil dieses Bauabschnitts" do
    %w[ausgebucht closed completed cancelled].each do |state|
      refute_includes EventLifecycle::STATES, state
    end
    assert_equal %w[draft in_review returned_for_revision rejected released], EventLifecycle::STATES
  end

  test "nur freigegebene Events erscheinen im Katalog" do
    assert_equal %w[released], EventLifecycle::VISIBLE_IN_CATALOG
  end

  test "nur der Entwurf ist durch den Anbieter bearbeitbar" do
    assert_equal %w[draft], EventLifecycle::EDITABLE_BY_PROVIDER
    provider = create_provider
    assert create_event(provider, status: "draft").editable_by_provider?
    refute create_event(provider, status: "returned_for_revision").editable_by_provider?
    refute create_event(provider, status: "in_review").editable_by_provider?
    refute create_event(provider, status: "released").editable_by_provider?
    refute create_event(provider, status: "rejected").editable_by_provider?
  end
end
