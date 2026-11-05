# frozen_string_literal: true

# Sitzungsbasierte Anmeldung interner Testrollen.
# Keine Selbstregistrierung, kein E-Mail-Versand, keine Passwortzurücksetzung.
class SessionsController < ApplicationController
  def new
  end

  def create
    user = InternalUser.find_by(email: params[:email].to_s.strip.downcase)
    if user&.authenticate(params[:password].to_s)
      reset_session
      session[:internal_user_id] = user.id
      redirect_to(user.curation? ? curation_events_path : provider_events_path,
                  notice: "Sie sind angemeldet als #{user.display_name}.")
    else
      flash.now[:alert] = "Anmeldung nicht möglich. Bitte prüfen Sie Ihre Eingaben."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    reset_session
    redirect_to catalog_path, notice: "Sie sind abgemeldet."
  end
end
