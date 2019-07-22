include ActionView::Helpers::TextHelper
class Challenge < ApplicationRecord
  belongs_to :user
  has_many :progress_logs

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
    (last_logged == nil)? "--": "#{last_logged.to_date.month}/#{last_logged.to_date.day}"
  end

  def progress_bar_length
    ((last_logged - created_at)/(date_complete - created_at)) * 100
  end

  def get_marker_position(date)
    @percent_elapsed = (date - created_at)/(date_complete - created_at)
    (1.6 + (96.6 * @percent_elapsed))
  end

  def get_worm_length(date)
    @percent_elapsed = (date - created_at)/(date_complete - created_at)
    (359 + (274 * @percent_elapsed))
  end

  def today_marker_position
    get_marker_position(DateTime.now.getutc)
  end

  def cummulative_metrics
    @cummulative = 0
    progress_logs.each do |log|
      @cummulative += log.metric
    end
    return @cummulative
  end
end
