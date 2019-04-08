require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  context 'when user is created' do
    it 'has correct info in settings page' do
      pending("stuck on this")
      @user = User.create(email: "bob@gmal.com", password: "wataasdadf", name: "bob", state:"CA", country:"USA", timezone:"Pacific Time (US & Canada)")
      @user.confirm
      signInUser(@user.email, @user.password)
      visit edit_user_registration_path
      expect(page).to have_content('MY SETTINGS')
    end
  end
end
