# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "jim@jim.com"
    username "jimsmith"
    password "suprsekret"
  end
end
