# require 'test_helper'

# feature 'Displaying Single Wishlist Feature Test' do
#   scenario 'displaying a single wishlist' do
#     FactoryGirl.create :wishlist, name: 'Home'
#     FactoryGirl.create :wishlist, name: 'Music'

#     visit("/wishlists/1")
#     page.must_have_content 'Home'

#     visit("/wishlist/2")
#     page.must_have_content 'Music'

#     # FactoryGirl.create :wishlist, name: 'Home'
#     # FactoryGirl.create :wishlist, name: 'Music'
#     # visit root_path
#     # page.must_have_content 'Music'
#     # page.must_have_content 'Home'
#   end

# end