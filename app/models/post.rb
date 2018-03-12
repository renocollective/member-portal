# frozen_string_literal: true

# ActiveRecord posts
class Post < ApplicationRecord
  belongs_to :member
  validates :title, :content, presence: true
end
