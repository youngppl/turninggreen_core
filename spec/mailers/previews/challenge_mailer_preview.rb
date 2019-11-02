# Preview all emails at http://localhost:3000/rails/mailers/challenge_mailer
include ChallengeMailerHelper
class ChallengeMailerPreview < ActionMailer::Preview
  def challenge_reminder_email_preview
    ChallengeMailer.challenge_reminder_email(User.find(35), site_updates, fun_facts.sample)
  end
end
