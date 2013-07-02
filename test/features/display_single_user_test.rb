require 'test_helper'

feature 'Display Single User Feature Test' do
  scenario 'visiting a single user page' do
    User.destroy_all
    puts User.count
    user = FactoryGirl.build :user
    visit new_user_path
    fill_in 'Email', with: user.email
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    fill_in 'Confirm Password', with: user.password_confirmation
    click_button 'Create User'
    puts current_path
    new_user = User.last
    visit user_path(new_user.id)
    current_url.must_equal ('http://www.example.com/users/' + new_user.id.to_s)
  end
end