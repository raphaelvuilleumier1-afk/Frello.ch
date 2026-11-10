# frozen_string_literal: true

# EventLifecycle – Zustandsmodell ST-002 (docs/product/06_STATE_MODELS.md), Teilmenge.
#
# Freigegebener Prototypumfang (Bauauftrag 01):
#   Entwurf -> in Pruefung -> {freigegeben | abgelehnt | zur Ueberarbeitung zurueckgegeben}
#
# GESPERRT: "zur Ueberarbeitung zurueckgegeben -> in Pruefung" sowie die Bearbeitung
# zurueckgegebener Events. Saemtliche Fachquellen (D-33, ADR-008, BR-004, FR-035,
# ST-002, EXC-013, JRN-014, DO-008, AC-035, GL-028) nennen "zur Ueberarbeitung
# zurueckgegeben" ausschliesslich als ERGEBNIS der Pruefung. Keine Quelle beschreibt
# einen ausgehenden Uebergang, wer ueberarbeitet oder wie das Event erneut in die
# Pruefung gelangt. Ohne Gruenderentscheid wird hier keine Regel abgeleitet.
# Im Prototyp ist "zurueckgegeben" daher ein Endzustand. Offene Entscheidung siehe
# docs/implementation/PROTOTYPE_01.md.
#
# AUSDRUECKLICH NICHT enthalten (spaetere ST-002-Uebergaenge):
#   ausgebucht, Buchungsschluss erreicht, durchgefuehrt, abgesagt, ausgefallen,
#   abgeschlossen. Diese setzen Buchungen bzw. Durchfuehrung voraus.
#
# "released" bedeutet in diesem Prototyp ausschliesslich INTERNE Kataloganzeige.
# Es gibt keine Buchbarkeit und keine oeffentliche Veroeffentlichung.
module EventLifecycle
  STATES = %w[draft in_review returned_for_revision rejected released].freeze

  LABELS = {
    "draft"                 => "Entwurf",
    "in_review"             => "In Prüfung",
    "returned_for_revision" => "Zur Überarbeitung zurückgegeben",
    "rejected"              => "Abgelehnt",
    "released"              => "Freigegeben (interne Kataloganzeige)"
  }.freeze

  TRANSITIONS = {
    %w[draft in_review]                      => { role: "provider", rule: "BR-004/BR-005", audit: true },
    %w[in_review released]                   => { role: "curation", rule: "BR-004",        audit: true },
    %w[in_review rejected]                   => { role: "curation", rule: "BR-004",        audit: true },
    %w[in_review returned_for_revision]      => { role: "curation", rule: "BR-004/BR-005", audit: true }
  }.freeze

  # Zustaende, in denen der Anbieter den Entwurf bearbeiten darf.
  # Nur der Entwurf. Bereits freigegebene Events sind nicht Bestandteil dieses
  # Bauabschnitts; die Bearbeitung zurueckgegebener Events ist mangels Fachquelle
  # gesperrt (siehe oben).
  EDITABLE_BY_PROVIDER = %w[draft].freeze

  # Nur dieser Zustand erscheint in der Besuchersicht (AC-001).
  VISIBLE_IN_CATALOG = %w[released].freeze

  def self.allowed?(from, to, role:)
    rule = TRANSITIONS[[ from.to_s, to.to_s ]]
    !rule.nil? && rule[:role] == role.to_s
  end

  def self.label(state) = LABELS.fetch(state.to_s, state.to_s)
end
