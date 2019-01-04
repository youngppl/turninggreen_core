module RegistrationsHelper
  def get_timezone_name_from(tz)
    if ActiveSupport::TimeZone::MAPPING.include? tz
      tz
    else
      ActiveSupport::TimeZone::MAPPING.key(tz)
    end
  end

  def profile_pic_link
    if current_user.profile_pic.attached?
      url_for(current_user.profile_pic)
    else
      asset_path("avatar.png")
    end
  end
end
