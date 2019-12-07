class ChallengeMailer < ApplicationMailer
  track open: true, click: true
  def challenge_reminder_email(user, updates=false, fact)
    @user = user
    @updates = updates
    @fact = fact.html_safe
    @user_challenges = @user.challenges.all
    @user_completed_challenges = @user_challenges.where(completed: true, reflection_completed: false)
    @user_incomplete_challenges = @user_challenges.where(completed: false)
    mail(to: @user.email, subject: 'How\'s your rootup challenges going? :)')
  end
end
