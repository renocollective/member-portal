# frozen_string_literal: true

ActiveRecord::Schema
  .define(version: 20170810030748) do # rubocop:disable Style/NumericLiterals
  create_table 'members', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'username'
    t.string 'firstname'
    t.string 'lastname'
    t.string 'email'
    t.string 'bio'
    t.string 'avatar'
  end
end
