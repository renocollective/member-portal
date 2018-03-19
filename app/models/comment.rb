# frozen_string_literal: AvatarUploader

# ActiveRecord comment model
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :member
end
