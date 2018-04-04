# frozen_string_literal: true

# ActiveRecord posts
class Announcement < ApplicationRecord
  validates :title, :content, presence: true
end
