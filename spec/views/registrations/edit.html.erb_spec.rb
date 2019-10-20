# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'devise/registrations/edit.html.erb', type: :view, js: true do

  context 'when user types email with no @ sign' do
    it 'shows error' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      fill_in 'user_email', with: 'bobnewemail.com'
      expect(page).to have_content('please enter a valid email')
    end
  end

  context 'when user enter valid email' do
    it 'changes button is clickable' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      fill_in 'user_email', with: 'bob@newemail.com'
      expect(page).to have_button('save changes', disabled: false)
    end
  end

  context 'when user changes email' do
    it 'shows verify email link' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      fill_in 'user_email', with: 'bob@newemail.com'
      click_on 'save changes'
      expect(page).to have_content('Verify your email')
    end
  end

  context 'when user click on verify email link' do
    it 'shows verify email popup' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      fill_in 'user_email', with: 'bob@newemail.com'
      click_on 'save changes'
      find('#verify-email-link').click
      expect(page).to have_button('Resend email', disabled: false)
    end
  end

  context 'when user enters a password in current password field' do
    it 'enables the password fields' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      fill_in 'user_current_password', with: 'asdf'
      expect(page).to have_field('user_password', disabled: false)
    end
  end

  context 'when user updates password' do
    it 'save button is clickable' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      fill_in 'user_current_password', with: 'wataasdadf'
      fill_in 'user_password', with: 'newpassword'
      fill_in 'user_password_confirmation', with: 'newpassword'
      expect(page).to have_button('save changes', disabled: false)
    end
  end

  context 'when user updates password' do
    it 'changes saved notification shows up' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      fill_in 'user_current_password', with: 'wataasdadf'
      fill_in 'user_password', with: 'newpassword'
      fill_in 'user_password_confirmation', with: 'newpassword'
      click_on 'save changes'
      expect(page).to have_content('Your account has been updated successfully.')
    end
  end

  context 'when user clicks on deactivate account' do
    it 'shows deactivate account popup' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      find('.deactivate-button').click
      expect(page).to have_content('Account Deactivation')
    end
  end

  context 'when user click on checkbox on privacy tab' do
    it 'makes save changes button clickable' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      check 'user_permissions_challenges'
      expect(page).to have_button('save changes', disabled: false)
    end
  end

  context 'when user saves privacy settings' do
    it 'shows notification when save is clicked' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      check 'user_permissions_challenges'
      click_on 'save changes'
      expect(page).to have_content('Your account has been updated successfully.')
    end
  end

  context 'when user click on checkbox on notifications tab' do
    it 'makes save changes button clickable' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      check 'user_notifications_content_newsletter'
      expect(page).to have_button('save changes', disabled: false)
    end
  end

  context 'when user saves notifications settings' do
    it 'shows notification when save is clicked' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      check 'user_notifications_content_newsletter'
      click_on 'save changes'
      expect(page).to have_content('Your account has been updated successfully.')
    end
  end

  context 'when user is created' do
    it 'has correct info in settings page' do
      @user = User.create(email: 'bob@gmal.com', password: 'wataasdadf', name: 'bob', state: 'CA', country: 'United States', timezone: 'Pacific Time (US & Canada)')
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      expect(find_field('user_email').value).to eq @user.email
      expect(page).to have_select('user_state', selected: 'California')
      expect(page).to have_select('user_country', selected: 'United States')
    end
  end
end
