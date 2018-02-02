# frozen_string_literal: true

FactoryBot.define do
  factory :member do
    firstname Faker::Name.first_name
    lastname Faker::Name.first_name
    email { Faker::Internet.safe_email(firstname) }
    username { Faker::Internet.user_name(firstname) }
    bio Faker::Name.title
  end
end
