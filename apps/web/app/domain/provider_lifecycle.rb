# frozen_string_literal: true

# ProviderLifecycle – Zustandsmodell ST-001 (docs/product/06_STATE_MODELS.md).
#
# Zustaende: registriert -> in Pruefung -> {verifiziert/aktiv | abgelehnt} -> (aktiv | gesperrt)
#
# Umgesetzter Prototypumfang: registriert, in Pruefung, verifiziert/aktiv, abgelehnt.
# Der Uebergang "aktiv -> gesperrt" (Moderation/Admin, BR-001 i.V.m. Paragraf 29)
# ist NICHT Bestandteil dieses Bauabschnitts; der Zustand existiert im Schema,
# wird hier aber nicht ausgeloest.
module ProviderLifecycle
  STATES = %w[registered in_review verified_active rejected suspended].freeze

  LABELS = {
    "registered"      => "Registriert",
    "in_review"       => "In Prüfung",
    "verified_active" => "Verifiziert / aktiv",
    "rejected"        => "Abgelehnt",
    "suspended"       => "Gesperrt"
  }.freeze

  # [von, nach] => { roles:, rule:, audit: }
  # Rollenzuordnung exakt nach ST-001 (docs/product/06_STATE_MODELS.md):
  #   registriert -> in Pruefung   Ausloeser "Anbieter reicht Verifikation ein", Berechtigung Anbieter
  #   in Pruefung -> verifiziert   Berechtigung Kuration
  #   in Pruefung -> abgelehnt     Berechtigung Kuration
  # Eine stellvertretende Einreichung durch die Kuration ist NICHT vorgesehen.
  TRANSITIONS = {
    %w[registered in_review]       => { roles: %w[provider], rule: "BR-001", audit: true },
    %w[in_review verified_active]  => { roles: %w[curation], rule: "BR-001", audit: true },
    %w[in_review rejected]         => { roles: %w[curation], rule: "BR-001", audit: true }
  }.freeze

  def self.allowed?(from, to, role:)
    rule = TRANSITIONS[[ from.to_s, to.to_s ]]
    !rule.nil? && rule[:roles].include?(role.to_s)
  end

  def self.label(state) = LABELS.fetch(state.to_s, state.to_s)
end
