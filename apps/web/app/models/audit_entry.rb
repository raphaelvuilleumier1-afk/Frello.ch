# frozen_string_literal: true

# DO-024 Auditprotokoll. Nur lesbar; es gibt keine Bearbeitung und keine Löschung.
class AuditEntry < ApplicationRecord
  belongs_to :actor, class_name: "InternalUser", optional: true

  validates :occurred_at, :actor_role, :actor_label, :subject_type,
            :subject_id, :subject_label, :action, presence: true

  scope :recent_first, -> { order(occurred_at: :desc, id: :desc) }

  def readonly? = persisted?
end
