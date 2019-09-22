class AdminController < ApplicationController
  include ThemesHelper

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

    @challenges_completed_per_theme = {}
    themes.each do |theme|
      @current_date = Date.today
      @challenge_for_theme = {}
      (1..12).each do
        @challenge_for_theme[Date::MONTHNAMES[@current_date.month] + " " + @current_date.year.to_s] = Challenge.where(theme: theme, completed: true).where('extract(year  from created_at) = ?', @current_date.year).where('extract(month from created_at) = ?', @current_date.month).length
        @current_date = @current_date.prev_month
      end
      @challenges_completed_per_theme[theme] = @challenge_for_theme
    end

    @challenges_completed_per_challenge = {}
    Challenge.distinct.pluck(:challenge_name).each do |challenge|
      @current_date = Date.today
      @challenge = {}
      @total = 0
      (1..12).each do
        @total_per_month = Challenge.where(challenge_name: challenge, completed: true).where('extract(year  from created_at) = ?', @current_date.year).where('extract(month from created_at) = ?', @current_date.month).length
        @challenge[Date::MONTHNAMES[@current_date.month] + " " + @current_date.year.to_s] = @total_per_month
        @total += @total_per_month
        @current_date = @current_date.prev_month
      end
      @challenge["TOTAL USERS COMPLETED"] = @total
      @challenges_completed_per_challenge[challenge] = @challenge
    end
  end
end
