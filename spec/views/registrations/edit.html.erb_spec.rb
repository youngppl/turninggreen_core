require 'rails_helper'

RSpec.describe "devise/registrations/edit.html.erb", type: :view do
  # context 'when user is created' do
  #   it 'has correct info in settings page' do
  #     @user = User.create(email: "bob@gmal.com", password: "wataasdadf", name: "bob", state:"CA", country:"United States", timezone:"Pacific Time (US & Canada)")
  #     @user.confirm
  #     signInUser(@user.email, @user.password)
  #     visit edit_user_registration_path
  #     expect(find_field('user_email').value).to eq @user.email
  #     expect(page).to have_select('user_state', selected: 'California')
  #     expect(page).to have_select('user_country', selected: 'United States')
  #     expect(page).to have_select('user_timezone', selected: '(GMT-08:00) Pacific Time (US & Canada)')
  #     expect(page).to have_select('user_notifications', selected: 'Daily')
  #   end
  # end
  #
  # context 'when user makes valid changes to their account' do
  #   before :each do
  #     @user = User.create(email: "bob@gmal.com", password: "wataasdadf", name: "bob", state:"CA", country:"United States", timezone:"Pacific Time (US & Canada)")
  #     @user.confirm
  #     signInUser(@user.email, @user.password)
  #     visit edit_user_registration_path
  #     fill_in 'user_email', with: 'bob@newemail.com'
  #     select 'Argentina', from: 'user_country'
  #     select '(GMT-08:00) Tijuana', from: 'user_timezone'
  #     click_button 'SAVE', match: :first
  #   end
  #   it 'shows a confirmation alert' do
  #     expect(page).to have_content('Your account has been updated successfully.')
  #   end
  #   it 'correctly updates their profile' do
  #     expect(find_field('user_email').value).to eq 'bob@newemail.com'
  #     expect(page).to have_select('user_state', selected: 'Not in USA')
  #     expect(page).to have_select('user_country', selected: 'Argentina')
  #     expect(page).to have_select('user_timezone', selected: '(GMT-08:00) Tijuana')
  #   end
  #   it 'correctly updates their notifications settings' do
  #     select 'Weekly', from: 'user_notifications'
  #     within '.notifications' do
  #       click_button 'SAVE'
  #     end
  #     expect(page).to have_select('user_notifications', selected: 'Weekly')
  #   end
  # end
  #
  # context 'if user tries to change state/country so that it does not match' do
  #   it 'displays an error message' do
  #     @user = User.create(email: "bob@gmal.com", password: "wataasdadf", name: "bob", state:"NO", country:"Aruba", timezone:"Pacific Time (US & Canada)")
  #     @user.confirm
  #     signInUser(@user.email, @user.password)
  #     visit edit_user_registration_path
  #     select 'California', from: 'user_state'
  #     click_button 'SAVE', match: :first
  #     expect(page).to have_content('State (for USA only) and country do not match')
  #   end
  # end
end
