require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before(:each) do
    @user = User.create(email: "bob@gmal.com", password: "wataadfaf")
    @user.confirm
  end
  context 'when user successfully logs in' do
    it 'redirects to dashboard' do
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      click_button 'sign in'
      expect(page).to have_current_path(dashboard_path)
    end
  end
end
