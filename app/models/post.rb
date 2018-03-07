# frozen_string_literal: true

# ActiveRecord posts
class Post < ApplicationRecord
  validates :title, :content, presence: true
end
