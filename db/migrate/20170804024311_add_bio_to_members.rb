# frozen_string_literal: true

# Add bio column to member model
class AddBioToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :bio, :string
  end
end
