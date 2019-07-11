include ActionView::Helpers::TextHelper
class Challenge < ApplicationRecord
  belongs_to :user

  def get_time_left
    @days = (date_complete - DateTime.now.getutc)/60/60/24
    if @days < 1
      pluralize ((date_complete - DateTime.now.getutc)/60/60).round, "hour"
    else
      pluralize @days.round, "day"
    end
  end
end
