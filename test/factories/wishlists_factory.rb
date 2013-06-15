require 'factory_girl'

  FactoryGirl.define do
      factory :wishlist do
        name 'Books'
        item_count 10
      end

  end