require 'test_helper'

feature 'Signup Feature Test' do
  scenario 'signing up with valid data' do
    user = FactoryGirl.build :user
    visit new_user_path
    fill_in 'Email', with: user.email
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    click_button 'Create User'
    new_user = User.last
    new_user.email.must_equal user.email
    new_user.username.must_equal user.username
    new_user.password.must_equal user.password
  end

  scenario 'signing up with a duplicate username' do
    User.destroy_all
    FactoryGirl.create :user # create an existing user in the database

    # pseudocode: fill out the sign up form with the same username 
    # as the one specified in the Factory
    user = FactoryGirl.build :user
    visit new_user_path
    fill_in 'Email', with: user.email
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    click_button 'Create User'

    User.count.must_equal 1 # User was not created
    current_path.must_equal '/users' # user is presented with the form again
    page.must_have_content 'Username has already been taken'
  end
end