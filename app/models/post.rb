# frozen_string_literal: true

# ActiveRecord posts
class Post < ApplicationRecord
  belongs_to :category
  validates :title, :content, :category_id, presence: true
end
