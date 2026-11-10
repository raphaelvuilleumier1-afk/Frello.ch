# frozen_string_literal: true

# Internes Testkonto. KEINE Fachanforderung aus docs/product/, sondern ein
# Hilfsmittel dieses Prototyps, um die Rollen Anbieter und Frello-Kuration
# nach docs/product/02_ROLES_PERMISSIONS.md voneinander zu trennen.
#
# Es gibt bewusst KEINE Selbstregistrierung und KEINEN E-Mail-Versand.
class InternalUser < ApplicationRecord
  has_secure_password

  ROLES = %w[provider curation].freeze

  belongs_to :provider, optional: true

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :display_name, presence: true
  validates :role, inclusion: { in: ROLES }
  validate  :role_provider_consistency

  normalizes :email, with: ->(value) { value.to_s.strip.downcase }

  scope :curation, -> { where(role: "curation") }

  def curation? = role == "curation"
  def provider_role? = role == "provider"

  def audit_label = "#{display_name} (#{role})"

  private

  def role_provider_consistency
    if curation? && provider_id.present?
      errors.add(:provider_id, "darf bei der Rolle Kuration nicht gesetzt sein")
    elsif provider_role? && provider_id.blank?
      errors.add(:provider_id, "muss bei der Rolle Anbieter gesetzt sein")
    end
  end
end
