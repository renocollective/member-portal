# frozen_string_literal: true

# Member Model
class Member < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  validates :username, :firstname, :lastname, :email, :bio, presence: true

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
