# frozen_string_literal: true

class Member < ApplicationRecord
   mount_uploader :avatar, AvatarUploader
end
