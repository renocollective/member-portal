# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    content 'MyText'
    post
    member
  end
end
