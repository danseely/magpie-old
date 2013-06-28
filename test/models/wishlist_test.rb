require 'test_helper'

describe Wishlist do
  describe 'associations' do
    it 'can belong to a user' do
      # implement these steps
      w = FactoryGirl.build :wishlist
      u = FactoryGirl.build :user
      w.user_id = u.id
    end
  end
end