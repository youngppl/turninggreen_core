require 'rails_helper'

RSpec.describe "challenges/show.html.erb", type: :view do

  context 'when user clicks on a locked challenge' do
    it 'shows the unlock new challenge modal' do
    end
  end

  context 'when user clicks on an unlocked challenge' do
    it 'does not the unlock new challenge modal' do
    end
  end

  context 'when user already has 6 current challenges' do
    it 'shows an error' do
      @user = User.create(email: "bob@gmal.com", state: 'California', country: 'United States', birthday:'2000-04-09', password: '123qwerty', password_confirmation: '123qwerty', referral: 'Friend')
      @user.confirm
      signInUser(@user.email, @user.password)
      @user.update(unlockedChallenges:['Water'])
      (1..6).each do
        @user.challenges.create(completed: false)
      end
      visit '/challenges/Water'
      page.execute_script("$.post('/challenges/add', {challenge_name:'test challenge name',theme:'challengeName',length_of_challenge:1, completed:false})")
      expect(page).to have_content('You can only have a maximum of 6 challenges!')
    end
  end
end
