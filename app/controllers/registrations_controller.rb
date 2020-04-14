class RegistrationsController < Devise::RegistrationsController
  after_action :save_timezone, only: [:create]

  def destroy
    resource.soft_delete
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    set_flash_message :notice, :destroyed
    yield resource if block_given?
    respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
  end

  def deactivate
    reasons = current_user.deactivation_reasons
    params.each do |key,value|
      if key == "not-safe" || key == "not-useful" || key == "too-much-work"
        reasons.push(key)
      end

      if key == "other"
        reasons.push(value)
      end
    end
    current_user.update(deactivation_reasons: reasons)
    head :no_content
  end

  def update_user 
    current_user.update(params.require(:user).permit(:email, :state, :country, :password, :password_confirmation, :timezone, :notifications, :notifications_content => [], :permissions => []))
    head :no_content
  end

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
