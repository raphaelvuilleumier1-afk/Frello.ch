# frozen_string_literal: true

# AuditTrail – Protokollierung nach DO-024 / PR-011 / FR-046 / NFR-010 / AC-045.
#
# "Nachvollziehbare Protokollierung relevanter Vorgaenge" – im Prototypumfang:
# Anbieterpruefung und Eventfreigabe (die uebrigen in PR-011 genannten Vorgaenge
# – Uebertragung, Ausfall/Absage, Rueckerstattung, Sanktion, Einsprache – existieren
# in diesem Bauabschnitt nicht).
#
# Der Eintrag wird IMMER in derselben Datenbanktransaktion wie der Fachvorgang
# geschrieben. Eine fehlgeschlagene Aktion darf keinen Freigabezustand und keinen
# Auditeintrag hinterlassen.
module AuditTrail
  module_function

  def record!(actor:, subject:, action:, from_state: nil, to_state: nil, note: nil,
              details: {}, occurred_at: Time.current)
    AuditEntry.create!(
      occurred_at:   occurred_at,
      actor:         actor,
      actor_role:    actor&.role.to_s.presence || "system",
      actor_label:   actor&.display_name.to_s.presence || "System (Regel)",
      subject_type:  subject.class.name,
      subject_id:    subject.id,
      subject_label: subject.try(:audit_label).to_s.presence || "#{subject.class.name}##{subject.id}",
      action:        action,
      from_state:    from_state,
      to_state:      to_state,
      note:          note,
      details:       details
    )
  end
end
