require 'test_helper'

describe User do
  describe 'validations' do
    let(:user) { FactoryGirl.create :user }

    it 'must have an email address' do
      user.email = ''
      user.valid?.wont_equal true
      user.errors[:email].must_include "can't be blank"
    end

    it 'must have a unique email address' do
      user2 = FactoryGirl.build :user
      user.email = 'jim@jim.com'
      user2.email = 'jim@jim.com'
      user2.valid?.must_equal false
    end

    it 'must have a valid email address' do
      user.email = '1234'
      user.valid?.must_equal false
    end

    it 'must have a username' do
      user.username = ''
      user.valid?.must_equal false
    end

    it 'must have a unique username' do
      user2 = FactoryGirl.build :user
      user.username = 'jim'
      user2.username = 'jim'
      user2.valid?.must_equal false
    end

    it 'must have a password' do
      user.password = ''
      user.valid?.must_equal false
    end

    it 'must have matching passwords' do
      user.password = 'foo'
      user.password_confirmation = 'bar'
      user.valid?.must_equal false
    end

  end

  describe 'associations' do
    it 'can have many wishlists' do
      u = FactoryGirl.build :user
      w = FactoryGirl.build :wishlist
      u.wishlists << w
      u.wishlists.must_equal [w]
    end
  end
end