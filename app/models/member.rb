# frozen_string_literal: true

# ActiveRecord Member user
class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, AvatarUploader
  #validates :username, presence: true
  #validates :firstname, presence: true
  #validates :lastname, presence: true
  validates :email, presence: true
  #validates :bio, presence: true
end
