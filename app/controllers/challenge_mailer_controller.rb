# frozen_string_literal: true

require 'rest-client'
class ChallengeMailerController < ApplicationController
  skip_before_action :verify_authenticity_token
  include ChallengeMailerHelper

  # def send_out_challenge_reminders
  #   facts = fun_facts
  #   updates = site_updates
  #   User.all.each do |user|
  #     if (user.notifications == "Daily" ||
  #       (user.notifications == "Weekly" && Date.today.sunday?) ||
  #       (user.notifications == "Every other day" && Date.today.day % 2 == 0)) &&
  #       user.challenges.length > 0
  #         if user.emails_sent.count('updates') >= 2
  #           updates = false
  #         else
  #           user.emails_sent << 'updates'
  #           user.save!
  #         end
  #         ChallengeMailer.challenge_reminder_email(user, updates, facts.sample).deliver_now
  #     end
  #   end
  #   puts 'executed send emails!'
  # end

  def reset_email_tracking
    User.all.each do |user|
      user.update(emails_sent: [])
    end
    puts 'executed reset emails!'
  end

  def unsubscribe
    User.where(email: params[:email]).update(notifications: 'Never')
  end

  def undo_unsubscribe
    User.where(email: params[:email]).update(notifications: 'Every other day')
  end

  def unsubscribe_reasons
    puts params
  end

end
