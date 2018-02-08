# frozen_string_literal: true

# Add more columns to member model
class AddFieldsToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :company, :string
    add_column :members, :website_name, :string
    add_column :members, :website_url, :string
    add_column :members, :location, :string
    add_column :members, :work_pattern, :string
    add_column :members, :phone, :string
    add_column :members, :activities, :string
    add_column :members, :interests, :string
    add_column :members, :twitter, :string
    add_column :members, :facebook, :string
    add_column :members, :linkedin, :string
    add_column :members, :instagram, :string
    add_column :members, :slack, :string
  end
end
