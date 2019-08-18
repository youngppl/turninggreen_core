class ConfirmationsController < Devise::ConfirmationsController

  protected

  def after_resending_confirmation_instructions_path_for(resource)
    edit_user_registration_path
  end

  def after_confirmation_path_for(resource_name, resource)
      if signed_in?(resource_name)
        dashboard_path
      else
        new_session_path(resource_name)
      end
    end
end
