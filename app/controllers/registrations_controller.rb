class RegistrationsController < Devise::RegistrationsController
  after_action :save_timezone, only: [:create]

  protected

  def after_update_path_for(resource)
    edit_user_registration_path
  end

  private

  def save_timezone
    return unless resource.persisted?
    resource.update(timezone: cookies[:timezone])
    cookies.delete :timezone
  end

end
