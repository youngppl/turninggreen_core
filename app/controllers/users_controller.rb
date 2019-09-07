class UsersController < ApplicationController
  before_action :authenticate_user!

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
      from: 'turninggreendev@gmail.com',
      to:'turninggreendev@gmail.com',
      subject: 'Feedback',
      body: "from: #{current_user.email}\n\n" + params[:feedback]).deliver
  end
end
