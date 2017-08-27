# frozen_string_literal: true

# ActiveRecord Member user
class Member < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  validates :username, :firstname, :lastname, :email, :bio, presence: true
end
