require 'rails_helper'

RSpec.describe "devise/registrations/new.html.erb", type: :view do
  # basic structure for tests
  # context '[what the user is gonna do]' do
  #   it '[what the app should do/how it should respond]' do
  #     ......
  #     [testing statements go here]
  #     ......
  #     expect(page).....  <--- the check goes here
  #   end
  # end
  context 'when duplicate email is entered' do
    it 'displays duplicate email error', js: true do
      @user = User.create(email: "bob@gmal.com", password: "wataadf")
      @user.confirm
      fillRegistrationsForm(name='asdf', email='bob@gmal.com')
      clickRegister
      expect(page).to have_content('please enter a valid email')
    end
  end
  context 'when entered password is too short' do
    it 'displays password too short error', js: true do
      fillRegistrationsForm('asdf', 'bob@gmal.com', "California", "United States", '2000-04-09', "123", "123")
      clickRegister
      expect(page).to have_content('password must be at least 8 characters')
    end
  end
  context 'when entered passwords do not match' do
    it 'displays passwords do not match error', js: true do
      fillRegistrationsForm('asdf', 'bob@gmal.com', "California", "United States", '2000-04-09', "123qwe", "qwe123")
      clickRegister
      expect(page).to have_content('password does not match')
    end
  end
  context 'when user selects country thats not USA' do
    it 'automatically selects NOT IN USA option for state dropdown menu' do
      fillRegistrationsForm('asdf', 'bob@gmal.com', "California", "Aruba")
      expect(page).to have_select('user_state', selected: 'Not in USA')
    end
  end
  context 'when user is not at least 13 years of age' do
    it 'displays an error message' do
      fillRegistrationsForm('asdf', 'bob@gmal.com', "California", "United States", 13.years.ago+1.day, "123qweqwe", "123qweqwe", "Friend")
      clickRegister
      expect(page).to have_content('you must be at least 13 years old to register')
    end
  end
  # context 'when a US state but non-US country is selected' do
  #   it 'displays an error message' do
  #     fillRegistrationsForm('asdf', 'bob@gmal.com', 'California', 'Angola', '2000-05-05', "123qwe", "123qwe", "Friend")
  #     select 'California', from: 'user_state'
  #     clickRegister
  #     expect(page).to have_content('State (for USA only) and country do not match')
  #   end
  # end
  context 'when user successfully signs up' do
    it 'queues a confirmation email' do
      fillRegistrationsForm
      expect{clickRegister}.to change(ActionMailer::Base.deliveries, :count).by(1)
    end
  end
end
