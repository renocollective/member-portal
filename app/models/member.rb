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

  if Rails.configuration.algolia_search
    include AlgoliaSearch
    algoliasearch per_environment: true do
      attribute :firstname, :lastname, :email, :bio
    end
  end

  # SEARCH by SQL LIKE command or Algoria by config
  def self.search_result(query)
    term = "%#{sanitize_sql_like(query)}%"
    return algolia_search_results(term) if Rails.configuration.algolia_search
    basic_search_results(term)
  end

  def self.algolia_search_results(term)
    Member.search(term)
  end

  def self.basic_search_results(term)
    Member.where(
      'firstname ILIKE :term OR
       lastname ILIKE :term OR
       bio ILIKE :term',
      term: term
    ).all
  end
end
