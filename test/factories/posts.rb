# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title 'MyString'
    content 'MyText'
    category_id 1
  end
end
