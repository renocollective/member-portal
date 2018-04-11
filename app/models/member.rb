# frozen_string_literal: true

# ActiveRecord Member user
class Member < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  acts_as_taggable_on :skills

  devise :invitable, :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :avatar, AvatarUploader

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :firstname, :lastname, presence: true

  def fullname
    firstname && lastname ? "#{firstname} #{lastname}" : username
  end

  def to_param
    username
  end
end
