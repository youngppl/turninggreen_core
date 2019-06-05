require 'rails_helper'

RSpec.describe "layouts/_dashboard_navbar.html.erb", type: :view do
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

  context 'when user clicks on TG logo' do
    it 'takes user to front page' do
      click_link "challenge_added_popover"
      expect(current_path).to eq '/'
    end
  end

  context 'when a user clicks on the home link' do
    let!(:current_user) {@user}
    it 'takes user to home page' do
      click_on "home"
      expect(current_path).to eq '/dashboard'
    end
    it 'underlines home link in green' do
      click_on "home"
      expect(page).to have_selector('.home-underline', visible: true)
    end
  end

  context 'when user clicks on the themes link' do
    it 'takes user to themes page' do
      click_link "themes"
      expect(current_path).to eq '/themes'
    end
    it 'underlines themes link in green' do
      click_link "themes"
      expect(page).to have_selector('.themes-underline', visible: true)
    end
  end

  context 'when a user logs out' do
    it 'takes user to the front page' do
      pending('sucks')
      click_link 'logout-button', visible: :hidden
      # find('.dropdown-item', text: 'Log Out', visible: :hidden).click
      expect(current_path).to eq '/'
    end
  end

end
