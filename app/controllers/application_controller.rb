class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :email, :state, :country, :birthday, :password, :password_confirmation, :referral)
    end
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
