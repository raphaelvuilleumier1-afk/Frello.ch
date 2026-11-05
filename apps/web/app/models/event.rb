# frozen_string_literal: true

# DO-007 Event mit dem verbindlichen Pflichtfeldsatz D-31.
#
# Wichtige Abgrenzungen dieses Bauabschnitts:
#  - Der Zustand "released" bedeutet ausschliesslich INTERNE Kataloganzeige.
#    Keine Buchbarkeit, keine öffentliche Veröffentlichung.
#  - synthetic_booked_count ist ein ausdrücklich synthetischer Testwert
#    (BR-007 nur Erfassung und Anzeige). Es gibt keine Buchungslogik.
#  - Unvollständige Entwürfe DÜRFEN gespeichert werden; erst die Einreichung
#    verlangt Vollständigkeit (BR-005 / EXC-013).
class Event < ApplicationRecord
  belongs_to :provider
  has_many :event_reviews, dependent: :destroy

  validates :status, inclusion: { in: EventLifecycle::STATES }
  validates :category, inclusion: { in: D31::CATEGORIES }, allow_blank: true
  validates :payment_method, inclusion: { in: D31::PAYMENT_METHODS.keys }, allow_blank: true
  validates :cancellation_model, inclusion: { in: D31::CANCELLATION_MODELS.keys }, allow_blank: true
  validates :activity_level, inclusion: { in: D31::ACTIVITY_LEVELS.keys }, allow_blank: true
  validates :language, inclusion: { in: D31::LANGUAGES.keys }, allow_blank: true
  validates :price_chf, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :min_participants, :max_participants,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
  validates :synthetic_booked_count,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate  :max_not_below_min
  validate  :external_booking_marker_inactive

  scope :in_catalog, -> { where(status: EventLifecycle::VISIBLE_IN_CATALOG) }

  def completeness = EventCompleteness.new(self)
  def editable_by_provider? = EventLifecycle::EDITABLE_BY_PROVIDER.include?(status)
  def in_catalog? = EventLifecycle::VISIBLE_IN_CATALOG.include?(status)
  def status_label = EventLifecycle.label(status)
  def audit_label = title.presence || "Evententwurf ##{id}"

  def free? = price_chf.present? && price_chf.zero?

  # BR-007 nur Erfassung und Anzeige – synthetischer Testwert, keine Buchungslogik.
  def synthetic_available_places
    return nil if max_participants.blank?

    max_participants - synthetic_booked_count
  end

  def category_label = category
  def payment_method_label = D31::PAYMENT_METHODS[payment_method]
  def cancellation_model_label = D31::CANCELLATION_MODELS[cancellation_model]
  def activity_level_label = D31::ACTIVITY_LEVELS[activity_level]
  def language_label = D31::LANGUAGES[language]

  private

  def max_not_below_min
    return if min_participants.blank? || max_participants.blank?
    return if max_participants >= min_participants

    errors.add(:max_participants, "darf nicht kleiner sein als die Mindestteilnehmerzahl")
  end

  def external_booking_marker_inactive
    return unless external_booking_marker

    # D-31 i.V.m. D-39: im MVP nicht anwendbar / inaktiv.
    errors.add(:external_booking_marker,
               "ist im MVP nicht anwendbar (D-31 in Verbindung mit D-39)")
  end
end
