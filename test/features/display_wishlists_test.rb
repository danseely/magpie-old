require 'test_helper'

feature 'Displaying Wishlists Feature Test' do
  scenario 'displaying the wishlist names' do
    FactoryGirl.create :wishlist, name: 'Home'
    FactoryGirl.create :wishlist, name: 'Music'
    visit root_path
    page.must_have_content 'Music'
    page.must_have_content 'Home'
  end

  scenario 'displaying the wishlist item count' do
    FactoryGirl.create(:wishlist, name: 'Home', item_count: 10)
    FactoryGirl.create(:wishlist, name: 'Music', item_count: 6)
    visit root_path
    page.must_have_content '10'
    page.must_have_content '6'
  end

  scenario 'displaying an empty list' do
    # FactoryGirl.create:wishlist, name: 'Home'
    visit root_path
    page.must_have_content "Oops, you don't have any lists yet!"
  end
end