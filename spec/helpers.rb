module Helpers
  def fillRegistrationsForm(name='bobbyboy', email='bobbyboy@gmail.com', state='California', country='United States', bday='2000-04-09', password='123qwerty', confirm='123qwerty', refer='Friend')
    visit new_user_registration_path
    fill_in 'user_name', with: name
    fill_in 'user_email', with: email
    select state, from: 'user_state'
    select country, from: 'user_country'
    page.execute_script("$('#datepicker').removeAttr('readonly')")
    fill_in 'datepicker', with: bday
    fill_in 'user_password', with: password
    fill_in 'user_password_confirmation', with: confirm
    select refer, from: 'user_referral'
  end

  def clickRegister
    click_button 'sign up'
  end

  def signInUser(email, password)
    visit new_user_session_path
    fill_in 'user_email', with: email
    fill_in 'user_password', with: password
    click_button 'sign in'
  end
end
