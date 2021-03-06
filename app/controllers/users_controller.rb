# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

  include ChallengesHelper
  include UsersHelper
  include ThemesHelper
  require 'chartjs/chart_helpers'

  def show
    # user dashboard, redirects here after successful login
    current_user.challenges.all.each do |challenge|
      if challenge.date_complete.getutc.to_date <= Time.now.utc.to_date
        challenge.update(completed: true, notification_viewed: true)
      end
    end
    @current_challenges = current_user.challenges.where(completed: false).order(updated_at: :desc)
    @level = current_user.level
  end

  def feedback
    ActionMailer::Base.mail(
      from: 'rootupteam@gmail.com',
      to: 'rootupteam@gmail.com',
      subject: 'Feedback',
      body: "from: #{current_user.email}\n\n" + params[:feedback]
    ).deliver
  end
end
