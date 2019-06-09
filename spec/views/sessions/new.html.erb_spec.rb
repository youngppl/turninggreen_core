require 'rails_helper'

RSpec.describe "devise/sessions/new.html.erb", type: :view do
  before(:each) do
    @user = User.create(email: "bob@gmal.com", state: 'California', country: 'United States', birthday:'2000-04-09', password: '123qwerty', password_confirmation: '123qwerty', referral: 'Friend')
  end

  after(:each) do
    User.delete(@user)
  end

  context 'when user logs in' do
    it 'produces error if user is not confirmed' do
      signInUser(@user.email, @user.password)
      expect(page).to have_content("You have to confirm your email address before continuing.")
    end

    it 'produces error when email/password is incorrect' do
      @user.confirm
      signInUser(@user.email, 'incorrect password')
      expect(page).to have_content("Invalid Email or password.")
    end
  end

  it 'has a password reset link' do
    visit new_user_session_path
    expect(page).to have_link('Forgot your password?')
  end
end
