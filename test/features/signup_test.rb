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
end