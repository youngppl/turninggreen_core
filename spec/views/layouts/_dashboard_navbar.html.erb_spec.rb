require 'rails_helper'

RSpec.describe "layouts/_dashboard_navbar.html.erb", type: :view do
  before(:each) do
    @user = User.create(email: "bob@gmal.com", state: 'California', country: 'United States', birthday:'2000-04-09', password: '123qwerty', password_confirmation: '123qwerty', referral: 'Friend')
  end

  after(:each) do
    User.delete(@user)
  end

  context 'when user clicks on TG logo' do
    it 'takes user to front page' do
      @user.confirm
      signInUser(@user.email, @user.password)
      save_and_open_page
      click_link "challenge_added_popover"
      expect(current_path).to eq '/'
    end
  end

  context 'when a user logs out' do
    it 'takes user to the front page' do
      pending('sucks')
      @user.confirm
      signInUser(@user.email, @user.password)
      click_link 'logout-button', visible: :hidden
      # find('.dropdown-item', text: 'Log Out', visible: :hidden).click
      expect(current_path).to eq '/'
    end
  end

end
