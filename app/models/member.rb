# frozen_string_literal: true

# Member Model
class Member < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  validates :username, :firstname, :lastname, :email, :bio, presence: true

  # SEARCH by SQL LIKE command or Algoria by config
  def self.search_result(query)
    term = "%#{sanitize_sql_like(query)}%"

    Member.where(
      'firstname LIKE :term OR lastname LIKE :term OR bio LIKE :term',
      term: term
    ).all
  end
end
