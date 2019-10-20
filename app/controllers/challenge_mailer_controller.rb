class ChallengeMailerController < ApplicationController
  skip_before_action :verify_authenticity_token

  def send_out_challenge_reminders
    User.all.each do |user|
      if user.emails_sent.length < 2
        if !user.emails_sent.include?('completed') and !user.challenges.where(completed: true, reflection_completed: false, date_complete: 1.week.ago..Date.today).empty?
          ChallengeMailer.challenge_completed_email(user).deliver_later
          user.emails_sent << 'completed'
          user.save!
        elsif !user.emails_sent.include?('ending') and !user.challenges.where(completed: false, date_complete: Date.today..1.week.from_now).empty?
          ChallengeMailer.challenge_ending_soon_email(user).deliver_later
          user.emails_sent << 'ending'
          user.save!
        elsif !user.emails_sent.include?('progress') and !user.challenges.all.empty?
          ChallengeMailer.challenge_in_progress_email(user).deliver_later
          user.emails_sent << 'progress'
          user.save!
        end
      end
    end
  end

  def reset_email_tracking
    User.all.each do |user|
      user.update(emails_sent: [])
    end
  end
end
