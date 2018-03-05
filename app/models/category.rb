# frozen_string_literal: true

# ActiveRecord categories for posts
class Category < ApplicationRecord
  has_many :posts
end
