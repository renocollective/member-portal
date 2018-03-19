# frozen_string_literal: true

# ActiveRecord posts
class Post < ApplicationRecord
  belongs_to :member
  has_many :comments
  validates :title, :content, presence: true
end
