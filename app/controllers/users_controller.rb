class UsersController < ApplicationController
  before_action :authenticate_user!
  # include Chartjs.ChartHelpers
  require 'chartjs/chart_helpers'

  def show
    # user dashboard, redirects here after successful login
    current_user.challenges.all.each do |challenge|
      if challenge.date_complete <= Time.now.utc
        challenge.update(completed:true, notification_viewed:true)
      end
    end
    @current_challenges = current_user.challenges.where(completed:false)
  end

  def feedback
    ActionMailer::Base.mail(
      from: 'rootupteam@gmail.com',
      to:'rootupteam@gmail.com',
      subject: 'Feedback',
      body: "from: #{current_user.email}\n\n" + params[:feedback]).deliver
  end
end
