# frozen_string_literal: true

module ProviderPortal
  # Anbietersicht.
  #   FR-034  Event als Entwurf mit Pflichtfeldern anlegen
  #   FR-036  NUR die lesende Eventliste des eigenen Anbieters
  #   FR-045  Zugänglichkeitsangaben je Event
  #
  # Eigentümerschaft wird bei jedem Zugriff serverseitig geprüft: ein Anbieter
  # sieht und bearbeitet ausschliesslich eigene Entwürfe und kann sich nicht
  # selbst freigeben (D-33).
  #
  # Schreibrechte nur für GEPRÜFTE Anbieter: FR-034 ("Geprüfte Anbieter legen
  # Events als Entwurf … an") und 02_ROLES_PERMISSIONS.md §5 ("Schreib-/
  # Verwaltungsrechte an Events erst nach erfolgreicher Anbieterprüfung", D-08).
  # Lesen der eigenen Events bleibt in jedem Anbieterzustand möglich.
  # Die Einreichung (submit) ist zusätzlich im Dienst unter Sperre abgesichert
  # (AC-032) und liefert dort die fachliche Begründung.
  class EventsController < ApplicationController
    WRITE_ACTIONS = %i[new create edit update].freeze

    before_action :require_provider!
    before_action :require_verified_provider!, only: WRITE_ACTIONS
    before_action :load_event, only: %i[show edit update submit]
    before_action :ensure_editable, only: %i[edit update]

    def index
      @events = scope.order(updated_at: :desc)
    end

    def show
      @completeness = @event.completeness
    end

    def new
      @event = scope.new(language: "de", status: "draft", synthetic: true)
    end

    # Entwurf und Auditeintrag event.draft_created entstehen gemeinsam oder gar nicht.
    def create
      @event = scope.new(event_params.merge(status: "draft", synthetic: true))
      saved = false
      ActiveRecord::Base.transaction do
        raise ActiveRecord::Rollback unless @event.save

        AuditTrail.record!(actor: current_internal_user, subject: @event,
                           action: "event.draft_created", to_state: "draft",
                           details: { "state_model" => "ST-002" })
        saved = true
      end
      return redirect_to(provider_event_path(@event), notice: "Entwurf gespeichert.") if saved

      render :new, status: :unprocessable_entity
    rescue ActiveRecord::ActiveRecordError => e
      # Nicht stumm verdecken: Ursache protokollieren, Nutzende erhalten eine
      # verstaendliche Meldung; die Transaktion ist bereits zurueckgerollt.
      Rails.logger.error("[#{self.class.name}#create] #{e.class}: #{e.message}")
      flash.now[:alert] = "Der Entwurf konnte nicht gespeichert werden. Bitte versuchen Sie es erneut."
      render :new, status: :unprocessable_entity
    end

    def edit
    end

    def update
      # Unvollständige Entwürfe dürfen gespeichert werden (BR-005 greift erst
      # bei der Einreichung).
      if @event.update(event_params)
        redirect_to provider_event_path(@event), notice: "Entwurf gespeichert."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def submit
      result = Services::SubmitEventForReview.new(event: @event, actor: current_internal_user).call
      if result.ok?
        redirect_to provider_event_path(@event), notice: "Zur Prüfung eingereicht."
      else
        @completeness = @event.completeness
        flash.now[:alert] = result.error
        render :show, status: :unprocessable_entity
      end
    end

    private

    def require_verified_provider!
      return if current_internal_user.provider&.verified?

      render "shared/provider_not_verified", status: :forbidden
    end

    # Serverseitige Eigentümerschaft: niemals über Parameter steuerbar.
    def scope = ::Event.where(provider_id: current_internal_user.provider_id)

    def load_event
      @event = scope.find_by(id: params[:id])
      render "shared/forbidden", status: :forbidden if @event.nil?
    end

    def ensure_editable
      return if @event.editable_by_provider?

      # Nachträgliche Bearbeitung bereits freigegebener Events ist nicht
      # Bestandteil dieses Bauabschnitts.
      render "shared/not_editable", status: :forbidden
    end

    def event_params
      permitted = D31::ALWAYS_REQUIRED.map(&:attribute) - [ :provider_id ]
      permitted += D31::CONDITIONAL.flat_map { |f| [ f.attribute, f.relevance_attribute ] }
      permitted += D31::OPTIONAL.map(&:attribute)
      permitted << :synthetic_booked_count
      # external_booking_marker ist bewusst NICHT erlaubt (D-31 i.V.m. D-39).
      params.require(:event).permit(*permitted)
    end
  end
end
