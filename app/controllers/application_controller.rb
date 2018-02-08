# frozen_string_literal: true

# Main application controller
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:username, :firstname, :lastname,
                         :email, :bio, :password, :password_confirmation,
                         :company, :phone, :website_url, :website_name,
                         :twitter, :facebook, :linkedin, :instagram, :slack,
                         :work_pattern, :activities, :interests, :location)
    end
  end
end
