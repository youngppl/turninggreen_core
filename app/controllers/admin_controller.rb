class AdminController < ApplicationController
  def index
    @countries = []
    User.all.each do |user|
      @countries << user.country
    end

    @states = []
    User.all.each do |user|
      @states << user.state
    end
    @states.delete('NO') # delete NO state

    @new_signups = {}
    @current_date = Date.today
    (1..12).each do
      @new_signups[Date::MONTHNAMES[@current_date.month] + " " + @current_date.year.to_s] = User.where('extract(year  from created_at) = ?', @current_date.year).where('extract(month from created_at) = ?', @current_date.month).length
      @current_date = @current_date.prev_month
    end

    @challenges_completed_per_month = {}
    @current_date = Date.today
    (1..12).each do
      @challenges_completed_per_month[Date::MONTHNAMES[@current_date.month] + " " + @current_date.year.to_s] = Challenge.where(completed: true).where('extract(year  from created_at) = ?', @current_date.year).where('extract(month from created_at) = ?', @current_date.month).length
      @current_date = @current_date.prev_month
    end
  end
end
