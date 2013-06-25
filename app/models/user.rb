class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_confirmation

  validates :username, uniqueness: true, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]+\z/ }
  validates :password, presence: true, confirmation: true
end
