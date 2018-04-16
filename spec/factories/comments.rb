# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    content 'MyText'
    member
    post
  end
end
