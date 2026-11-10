# frozen_string_literal: true

# Besuchersicht: interner Katalog (FR-001, FR-002, FR-003, FR-004, FR-045).
#
# AC-001: Es werden ausschliesslich freigegebene Events angezeigt.
# AC-003: Ohne Anmeldung werden keine Teilnehmerdaten ausgeliefert – in diesem
#         Prototyp existieren ohnehin keine Teilnehmenden.
#
# Diese Ansicht ist eine INTERNE VORSCHAU ohne Buchungsfunktion.
class CatalogController < ApplicationController
  def index
    @query = CatalogQuery.new(params.permit(*CatalogQuery::FILTER_KEYS).to_h)
    @events = @query.results
  end

  def show
    # AC-001: Direkte URLs dürfen die Regel nicht umgehen. Daher wird hier
    # ausschliesslich im Katalog-Scope gesucht; alles andere ergibt 404.
    @event = Event.in_catalog.find_by(id: params[:id])
    return render "shared/not_in_catalog", status: :not_found if @event.nil?
  end
end
