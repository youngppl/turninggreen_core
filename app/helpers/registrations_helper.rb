module RegistrationsHelper
  def get_timezone_name_from(tz)
    if ActiveSupport::TimeZone::MAPPING.include? tz
      tz
    else
      ActiveSupport::TimeZone::MAPPING.key(tz)
    end
  end
end
