include ActionView::Helpers::TextHelper
class Challenge < ApplicationRecord
  belongs_to :user

  def get_time_left
    @weeks = (date_complete - DateTime.now.getutc)/60/60/24/7
    if @weeks < 1
      @days = (date_complete - DateTime.now.getutc)/60/60/24
      if @days < 1
        pluralize ((date_complete - DateTime.now.getutc)/60/60).round, "hour"
      else
        pluralize @days.round, "day"
      end
    else
      pluralize @weeks.round, "week"
    end
  end

  def get_last_logged
    (last_logged == nil)? "--": last_logged.to_date
  end

  def today_marker_position
     @percent_elapsed = (DateTime.now.getutc - created_at)/(date_complete - created_at)
     (1.6 + (96.6 * @percent_elapsed))
  end
end
