class ConfirmationsController < Devise::ConfirmationsController
  
  protected

  def after_resending_confirmation_instructions_path_for(resource)
    edit_user_registration_path
  end
end
