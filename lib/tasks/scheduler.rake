desc "This task is called by the Heroku scheduler add-on"
task :send_emails => :environment do
  cmc = ChallengeMailerController.new
  cmc.send_out_challenge_reminders
  if Time.now.utc.sunday?
    cmc.reset_email_tracking
  end
end
