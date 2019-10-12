# Preview all emails at http://localhost:3000/rails/mailers/challenge_mailer
class ChallengeMailerPreview < ActionMailer::Preview
  def challenge_completed_email_preview
    ChallengeMailer.challenge_completed_email(User.find(35))
  end

  def challenge_ending_soon_email_preview
    ChallengeMailer.challenge_ending_soon_email(User.find(35))
  end

  def challenge_in_progress_email_preview
    ChallengeMailer.challenge_in_progress_email(User.find(35))
  end
end
