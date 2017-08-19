# frozen_string_literal: true

# Create member model
class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members, &:timestamps
  end
end
