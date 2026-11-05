# frozen_string_literal: true

# DO-005 Anbieter.
# BR-001 / D-08: Im MVP nur geprüfte gewerbliche, institutionelle oder
# gemeinnützige Anbieter. Private Gastgeber sind nicht zugelassen (AC-033) –
# es gibt daher keinen Anbietertyp "privat".
class Provider < ApplicationRecord
  TYPES = {
    "commercial"    => "Gewerblich",
    "institutional" => "Institutionell",
    "nonprofit"     => "Gemeinnützig"
  }.freeze

  has_many :events, dependent: :restrict_with_error
  has_many :provider_reviews, dependent: :destroy
  has_many :internal_users, dependent: :nullify

  validates :organisation_name, :contact_person_name, :contact_email,
            :contact_phone, :business_address, :business_postal_code,
            :business_city, presence: true
  validates :provider_type, inclusion: { in: TYPES.keys }
  validates :status, inclusion: { in: ProviderLifecycle::STATES }

  scope :verified, -> { where(status: "verified_active") }

  def verified? = status == "verified_active"
  def type_label = TYPES.fetch(provider_type, provider_type)
  def status_label = ProviderLifecycle.label(status)
  def audit_label = organisation_name

  def latest_review = provider_reviews.order(decided_at: :desc).first
end
