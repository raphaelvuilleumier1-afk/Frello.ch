# frozen_string_literal: true

module ProviderPortal
  # ST-001: registriert -> in Prüfung ("Anbieter reicht Verifikation ein").
  #
  # Der Anbieter wird AUSSCHLIESSLICH aus der Sitzung bestimmt
  # (current_internal_user.provider). Es gibt keinen Parameter, über den ein
  # anderer Anbieter angesprochen werden könnte. Keine Selbstregistrierung:
  # das Anbieterkonto und der Anbieter bestehen bereits als synthetische Testdaten.
  class VerificationsController < ApplicationController
    before_action :require_provider!

    def create
      result = Services::SubmitProviderForReview.new(
        provider: current_internal_user.provider, actor: current_internal_user
      ).call

      if result.ok?
        redirect_to provider_events_path, notice: "Verifikation zur Prüfung eingereicht."
      else
        redirect_to provider_events_path, alert: result.error, status: :see_other
      end
    end
  end
end
