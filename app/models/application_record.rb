class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  mount_uploader :avatar, AvatarUploader
  validates :username, :firstname, :lastname, :email, :bio, :presence => true
end
