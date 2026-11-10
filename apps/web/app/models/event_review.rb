# frozen_string_literal: true

# DO-008 Eventfreigabe.
# D-33 / BR-004 / AC-035: genau drei Ergebnisse, immer durch eine Person
# entschieden. Keine automatisierte oder KI-basierte Freigabe.
class EventReview < ApplicationRecord
  OUTCOMES = {
    "released" => "Freigegeben",
    "rejected" => "Abgelehnt",
    "returned" => "Zur Überarbeitung zurückgegeben"
  }.freeze

  belongs_to :event
  belongs_to :decided_by, class_name: "InternalUser"

  validates :outcome, inclusion: { in: OUTCOMES.keys }
  validates :note, presence: true
  validates :decided_at, presence: true

  def outcome_label = OUTCOMES.fetch(outcome, outcome)
end
