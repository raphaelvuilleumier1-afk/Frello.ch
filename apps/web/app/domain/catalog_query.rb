# frozen_string_literal: true

# CatalogQuery – interne Katalogsuche mit den MVP-Pflichtfiltern.
#
# Fachliche Grundlage: BR-006 / D-32 / FR-002 / AC-002 (woertlich geprueft):
#   "Verbindliche Filter: Stadt/Region, Datum/Zeitraum, Kategorie, Preis,
#    kostenlos, Zugaenglichkeit, Aktivitaetsniveau, «Alleine willkommen»,
#    verfuegbare Plaetze. Weitere Filter (Sprache, OeV, Verpflegung, Altersfokus)
#    zurueckgestellt."
#
# Die zurueckgestellten vier Filter werden ausdruecklich NICHT angeboten (AC-002).
#
# AC-001: Die Suche liefert ausschliesslich freigegebene Events. Diese Einschraenkung
# ist hier fest verdrahtet und nicht ueber Parameter abwaehlbar.
class CatalogQuery
  FILTER_KEYS = %i[
    city_region date_from date_to category price_max free_only
    accessibility activity_level alone_welcome available_places_only
  ].freeze

  # Ausdruecklich zurueckgestellt (D-32) – hier nur dokumentiert, nicht implementiert.
  DEFERRED_FILTER_KEYS = %i[language public_transport catering age_focus].freeze

  attr_reader :params

  def initialize(params = {})
    @params = params.symbolize_keys.slice(*FILTER_KEYS)
  end

  def results
    scope = Event.where(status: EventLifecycle::VISIBLE_IN_CATALOG).includes(:provider)
    scope = apply_city_region(scope)
    scope = apply_dates(scope)
    scope = apply_category(scope)
    scope = apply_price(scope)
    scope = apply_accessibility(scope)
    scope = apply_activity_level(scope)
    scope = apply_alone_welcome(scope)
    scope = apply_available_places(scope)
    scope.order(:event_date, :start_time)
  end

  def active_filters
    params.reject { |_k, v| v.blank? }
  end

  private

  def apply_city_region(scope)
    return scope if params[:city_region].blank?

    scope.where("city_region ILIKE ?", "%#{Event.sanitize_sql_like(params[:city_region])}%")
  end

  def apply_dates(scope)
    scope = scope.where(event_date: Date.parse(params[:date_from])..) if parsable_date?(params[:date_from])
    scope = scope.where(event_date: ..Date.parse(params[:date_to]))   if parsable_date?(params[:date_to])
    scope
  end

  def parsable_date?(value)
    value.present? && (Date.parse(value) rescue false)
  end

  def apply_category(scope)
    return scope if params[:category].blank?

    scope.where(category: params[:category])
  end

  def apply_price(scope)
    scope = scope.where(price_chf: 0) if truthy?(params[:free_only])
    if params[:price_max].present? && params[:price_max].to_s.match?(/\A\d+(\.\d+)?\z/)
      scope = scope.where(price_chf: ..BigDecimal(params[:price_max].to_s))
    end
    scope
  end

  def apply_accessibility(scope)
    return scope if params[:accessibility].blank?

    scope.where("accessibility_info ILIKE ?", "%#{Event.sanitize_sql_like(params[:accessibility])}%")
  end

  def apply_activity_level(scope)
    return scope if params[:activity_level].blank?

    scope.where(activity_level: params[:activity_level])
  end

  def apply_alone_welcome(scope)
    return scope unless truthy?(params[:alone_welcome])

    scope.where(alone_welcome: true)
  end

  def apply_available_places(scope)
    return scope unless truthy?(params[:available_places_only])

    scope.where("max_participants > synthetic_booked_count")
  end

  def truthy?(value)
    %w[1 true yes on].include?(value.to_s.downcase)
  end
end
