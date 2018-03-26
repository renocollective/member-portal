# frozen_string_literal: true

# ActiveRecord posts
class Post < ApplicationRecord
  belongs_to :member
  has_many :comments, dependent: :destroy
  validates :title, :content, presence: true
end
