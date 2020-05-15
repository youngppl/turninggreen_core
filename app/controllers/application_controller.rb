class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_variant
  helper_method :mobile?

  def mobile?
    request.user_agent.match(/iPhone/i).present? ||
    request.user_agent.match(/Android/i && /mobile/i).present? ||
    request.user_agent.match(/Windows Phone/i).present?
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :email, :state, :country, :birthday, :password, :password_confirmation, :referral, :permissions => [])
    end
    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:email, :state, :country, :password, :password_confirmation, :timezone, :profile_pic, :notifications, :notifications_content => [], :permissions => [])
    end
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  private

  def set_variant
    case request.user_agent
      when /iPhone/i
        request.variant = :phone
      when /Android/i && /mobile/i
        request.variant = :phone
      when /Windows Phone/i
        request.variant = :phone
    end
  end
end
