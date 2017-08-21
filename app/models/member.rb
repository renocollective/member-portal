# frozen_string_literal: true

class Member < ApplicationRecord
   mount_uploader :avatar, AvatarUploader
   validates :username, :firstname, :lastname, :email, :bio, :presence => true
end
