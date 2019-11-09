require 'rest-client'
class ChallengeMailerController < ApplicationController
  skip_before_action :verify_authenticity_token
  include ChallengeMailerHelper

  def send_out_challenge_reminders
    facts = fun_facts
    updates = site_updates
    User.all.each do |user|
      if user.emails_sent.include?('updates')
        updates = false
      else
        user.emails_sent << 'updates'
        user.save!
      end
      if user.notifications == "Daily" ||
        (user.notifications == "Weekly" && Date.today.sunday?) ||
        (user.notifications == "Every other day" && Date.today.day % 2 == 0)
          ChallengeMailer.challenge_reminder_email(user, updates, facts.sample).deliver_later
      end
    end
    head :no_content
  end

  def reset_email_tracking
    User.all.each do |user|
      user.update(emails_sent: [])
    end
    head :no_content
  end
end
