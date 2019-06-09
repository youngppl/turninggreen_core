require 'rails_helper'

RSpec.describe 'devise/mailer/confirmation_instructions.html.erb', type: :view do
  context 'when user clicks on the confirmation link' do
    it 'redirects user to the login page' do
      @user = User.create(email: "bob@gmall.com", password: "wataasdadf", name: "bob", state:"CA", country:"United States", timezone:"Pacific Time (US & Canada)")
      token = ActionMailer::Base.deliveries.last.body.match(/confirmation_token=([^'"]+)/)
      visit "/verification?#{token}"
      expect(page.current_path).to eq new_user_session_path
    end
  end
end
