class ChallengeMailer < ApplicationMailer
  def challenge_completed_email(user)
    @user = user
    @user_challenges = @user.challenges.all
    @user_completed_challenges = @user_challenges.where(completed: true, reflection_completed: false)
    @user_incomplete_challenges = @user_challenges.where(completed: false)
    mail(to: @user.email, subject: 'Your rootup challenge is complete! :D')
  end

  def challenge_ending_soon_email(user)
    @user = user
    @user_challenges = @user.challenges.all
    @user_incomplete_challenges = @user_challenges.where(completed: false)
    mail(to: @user.email, subject: 'How’s your rootup challenges going? :D')
  end

  def challenge_in_progress_email(user)
    @user = user
    @user_challenges = @user.challenges.all
    @user_incomplete_challenges = @user_challenges.where(completed: false)
    mail(to: @user.email, subject: 'How’s your rootup challenges going? :)')
  end
end
