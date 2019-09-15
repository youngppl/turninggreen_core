require 'rails_helper'

RSpec.describe "layouts/_dashboard_navbar.html.erb", type: :view, js: true do
  before(:each) do

    @user = User.create(email: "bob@gmal.com", state: 'California', country: 'United States', birthday:'2000-04-09', password: '123qwerty', password_confirmation: '123qwerty', referral: 'Friend')
    @user.confirm
    signInUser(@user.email, @user.password)
    sign_in @user
    content_for :navbar do
      render 'layouts/dashboard_navbar'
    end
  end

  after(:each) do
    User.delete(@user)
  end

  context 'when a user clicks on the home link' do
    let!(:current_user) {@user}
    it 'takes user to home page' do
      click_on "Dashboard"
      expect(current_path).to eq '/dashboard'
    end
  end

  context 'when user clicks on the challenges link' do
    it 'takes user to themes page' do
      click_link "Challenges"
      expect(current_path).to eq '/themes'
    end
  end

  context 'when a user logs out' do
    it 'takes user to the front page' do
      click_link 'log out'
      expect(current_path).to eq '/'
    end
  end

  context 'when a user click on settings' do
    it 'takes user to the settings page' do
      click_link 'Settings'
      expect(current_path).to eq '/settings'
    end
  end
end
