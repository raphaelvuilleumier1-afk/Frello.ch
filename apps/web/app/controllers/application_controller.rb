# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_internal_user, :signed_in?

  # Berechtigungen werden bei JEDEM relevanten Serverzugriff geprüft
  # (02_ROLES_PERMISSIONS.md §3). Die Oberfläche blendet zusätzlich aus –
  # das ist aber nie die Absicherung.
  def current_internal_user
    return @current_internal_user if defined?(@current_internal_user)

    @current_internal_user =
      session[:internal_user_id] && InternalUser.find_by(id: session[:internal_user_id])
  end

  def signed_in? = current_internal_user.present?

  private

  def require_signed_in!
    return if signed_in?

    redirect_to sign_in_path, alert: "Bitte melden Sie sich an."
  end

  def require_curation!
    return require_signed_in! unless signed_in?
    return if current_internal_user.curation?

    deny!
  end

  def require_provider!
    return require_signed_in! unless signed_in?
    return if current_internal_user.provider_role?

    deny!
  end

  def deny!
    render "shared/forbidden", status: :forbidden
  end
end
