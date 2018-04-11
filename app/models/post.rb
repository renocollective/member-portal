# frozen_string_literal: true

# ActiveRecord posts
class Post < ApplicationRecord
  belongs_to :member
  belongs_to :category
  has_many :comments, dependent: :destroy
  before_create :create_slug

  validates :title, :content, :category_id, presence: true
  mount_uploader :image, PostImageUploader

  def to_param
    slug
  end

  def create_slug
    self.slug = title.parameterize
  end
end
