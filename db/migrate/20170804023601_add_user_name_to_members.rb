# frozen_string_literal: true

# Add initial columns to member model
class AddUserNameToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :username, :string
    add_column :members, :firstname, :string
    add_column :members, :lastname, :string
    add_column :members, :email, :string
  end
end
