# frozen_string_literal: true

module Curation
  # Frello-Kuration: Anbieterprüfung (FR-032, FR-033, BR-001, ST-001, AC-032, AC-033).
  class ProvidersController < ApplicationController
    before_action :require_curation!
    before_action :load_provider, only: %i[show decide]

    def index
      @providers = ::Provider.order(:organisation_name)
    end

    def new
      @provider = ::Provider.new(status: "registered", synthetic: true)
    end

    # Anbieter und Auditeintrag provider.registered entstehen gemeinsam oder gar nicht.
    def create
      @provider = ::Provider.new(provider_params.merge(status: "registered", synthetic: true))
      saved = false
      ActiveRecord::Base.transaction do
        raise ActiveRecord::Rollback unless @provider.save

        AuditTrail.record!(actor: current_internal_user, subject: @provider,
                           action: "provider.registered", to_state: "registered",
                           details: { "state_model" => "ST-001" })
        saved = true
      end
      return redirect_to(curation_provider_path(@provider), notice: "Synthetischer Anbieter erfasst.") if saved

      render :new, status: :unprocessable_entity
    rescue ActiveRecord::ActiveRecordError => e
      # Nicht stumm verdecken: Ursache protokollieren, Nutzende erhalten eine
      # verstaendliche Meldung; die Transaktion ist bereits zurueckgerollt.
      Rails.logger.error("[#{self.class.name}#create] #{e.class}: #{e.message}")
      flash.now[:alert] = "Der Anbieter konnte nicht erfasst werden. Bitte versuchen Sie es erneut."
      render :new, status: :unprocessable_entity
    end

    def show
      @review = ProviderReview.new
    end

    # ST-001: in Prüfung -> verifiziert/aktiv | abgelehnt (Berechtigung: Kuration).
    # Die Einreichung zur Prüfung (registriert -> in Prüfung) ist dem Anbieter
    # vorbehalten und hier bewusst NICHT erreichbar.
    def decide
      case params[:step]
      when "verify", "reject"
        outcome = params[:step] == "verify" ? "verified" : "rejected"
        result = Services::DecideProviderReview.new(
          provider: @provider, actor: current_internal_user, outcome: outcome,
          note: params[:note], checks: params.permit(:register_check, :identity_check,
                                                     :bank_account_check, :qualification_check).to_h.symbolize_keys
        ).call
      else
        result = Struct.new(:ok?, :error).new(false, "Unbekannter Schritt.")
      end

      if result.ok?
        redirect_to curation_provider_path(@provider), notice: "Prüfschritt erfasst."
      else
        @review = ProviderReview.new
        flash.now[:alert] = result.error
        render :show, status: :unprocessable_entity
      end
    end

    private

    def load_provider
      @provider = ::Provider.find_by(id: params[:id])
      render "shared/not_found", status: :not_found if @provider.nil?
    end

    def provider_params
      params.require(:provider).permit(:organisation_name, :provider_type,
                                       :contact_person_name, :contact_email, :contact_phone,
                                       :business_address, :business_postal_code, :business_city)
    end
  end
end
