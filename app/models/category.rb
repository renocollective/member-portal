# frozen_string_literal: true

# ActiveRecord Category model
class Category < ApplicationRecord
  has_many :posts, dependent: :destroy
end
