require 'rails_helper'

# RSpec.describe 'devise/mailer/confirmation_instructions.html.erb', type: :view do
#   context 'when user clicks on the confirmation link' do
#     it 'redirects user to the login page' do
#       @user = User.create(name: "bobb", email: "bob@gmal.com", state: 'California', country: 'United States', birthday:'2000-04-09', password: '123qwerty', password_confirmation: '123qwerty', referral: 'Friend')
#       byebug
#       token = ActionMailer::Base.deliveries.last.body.match(/confirmation_token=([^'"]+)/)
#       visit "/verification?#{token}"
#       expect(page.current_path).to eq new_user_session_path
#     end
#   end
# end
