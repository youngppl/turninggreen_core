require 'rails_helper'

RSpec.describe "devise/registrations/edit.html.erb", type: :view do
  context 'when user is created' do
    it 'has correct info in settings page' do
      @user = User.create(email: "bob@gmal.com", password: "wataasdadf", name: "bob", state:"CA", country:"United States", timezone:"Pacific Time (US & Canada)")
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      expect(find_field('user_email').value).to eq @user.email
      expect(page).to have_select('user_state', selected: 'California')
      expect(page).to have_select('user_country', selected: 'United States')
      expect(page).to have_select('user_timezone', selected: '(GMT-08:00) Pacific Time (US & Canada)')
      expect(page).to have_select('user_notifications', selected: 'Daily')
    end
  end
end
