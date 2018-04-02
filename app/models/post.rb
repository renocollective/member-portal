# frozen_string_literal: true

# ActiveRecord posts
class Post < ApplicationRecord
  belongs_to :member
  belongs_to :category
  has_many :comments, dependent: :destroy

  validates :title, :content, :category_id, presence: true
end
