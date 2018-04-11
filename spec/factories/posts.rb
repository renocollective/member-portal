# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title 'MyString'
    content 'MyText'
    member
    category
  end
end
