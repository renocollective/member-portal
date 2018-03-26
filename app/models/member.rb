# frozen_string_literal: true

# ActiveRecord Member user
class Member < ApplicationRecord
  has_many :posts
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, AvatarUploader
  validates :email, presence: true
end
