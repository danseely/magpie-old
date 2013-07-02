require 'test_helper'

feature 'Sign In Feature Test' do
  scenario 'signing in with a valid email and password' do
    u = FactoryGirl.create :user, password: 'omg', password_confirmation: 'omg'
    visit signin_path
    fill_in 'Email', with: u.email
    fill_in 'Password', with: u.password
    click_button 'Sign In'

    current_path.must_equal root_path
    page.must_have_content "Welcome #{u.username}"
  end

  scenario 'signing in with an incorrect email or password' do
    #implement these steps
  end
end