require 'test_helper'

feature 'Display Single User Feature Test' do
  scenario 'visiting a single user page' do
    user = FactoryGirl.build :user
    visit new_user_path
    fill_in 'Email', with: user.email
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    click_button 'Create User'
    new_user = User.last
    visit user_path(new_user.id)
    current_url.must_equal ('http://www.example.com/users/' + new_user.id.to_s)
  end
end