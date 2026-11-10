# frozen_string_literal: true

# DO-006 Anbieterprüfung.
# Die Prüfmassnahmen nach Businessplan §29 (Register-, Identitäts-,
# Bankkontoabgleich, Qualifikationsnachweis) werden hier MANUELL erfasst.
# Es besteht KEINE Schnittstelle zu Registern oder Prüfdiensten; Teile dieser
# Massnahmen sind in §29 als [EXTERN ZU PRÜFEN] geführt.
class ProviderReview < ApplicationRecord
  OUTCOMES = { "verified" => "Verifiziert", "rejected" => "Abgelehnt" }.freeze

  belongs_to :provider
  belongs_to :decided_by, class_name: "InternalUser"

  validates :outcome, inclusion: { in: OUTCOMES.keys }
  validates :note, presence: true
  validates :decided_at, presence: true

  def outcome_label = OUTCOMES.fetch(outcome, outcome)
end
