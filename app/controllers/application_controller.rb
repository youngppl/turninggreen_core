class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :email, :state, :country, :birthday, :password, :password_confirmation, :referral)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:email, :state, :country, :current_password, :password, :password_confirmation, :timezone, :profile_pic, :notifications, :notifications_content => [], :permissions => [])
    end
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
