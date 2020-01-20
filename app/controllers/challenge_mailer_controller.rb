# frozen_string_literal: true

require 'rest-client'
class ChallengeMailerController < ApplicationController
  skip_before_action :verify_authenticity_token
  include ChallengeMailerHelper

  def send_out_challenge_reminders
    facts = fun_facts
    updates = site_updates
    User.all.each do |user|
      next unless (user.notifications == 'Daily' ||
        (user.notifications == 'Weekly' && Date.today.sunday?) ||
        (user.notifications == 'Every other day' && Date.today.day.even?)) &&
                  !user.challenges.empty?

      if user.emails_sent.count('updates') >= 2
        updates = false
      else
        user.emails_sent << 'updates'
        user.save!
      end
      ChallengeMailer.challenge_reminder_email(user, updates, facts.sample).deliver_later
    end
    head :no_content
  end

  def reset_email_tracking
    User.all.each do |user|
      user.update(emails_sent: [])
    end
    head :no_content
  end

  def unsubscribe
    User.where(email: params[:email]).update(notifications: 'Never')
  end
  
  def undo_unsubscribe
    User.where(email: params[:email]).update(notifications: 'Every other day')
  end

  def unsubscribe_reasons
    puts params
    # RestClient.post('https://sheets.googleapis.com/v4/spreadsheets/1QdddPvJRMPYVF0lvE03xUZlRFjTW4Rb1np9fmM_UaxM/values/UnsubReasons:append',
    #                 {"majorDimension": 'DIMENSION_UNSPECIFIED',
    #                 "range": '',
    #                 "values": [
    #                   [
    #                     'asdf'
    #                   ]
    #                 ]},
    #                 {
    #                   'valueInputOption': "RAW",
    #                   'access_token': 'AIzaSyAAa9nyvcdXpcGyXbRS8EBsq3JNQ2SQJPM'
    #                 }
    #               ).body
  end

end
