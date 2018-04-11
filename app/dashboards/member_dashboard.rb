# frozen_string_literal: true

require 'administrate/base_dashboard'

# member dashboard fields
class MemberDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    invited_by: Field::Polymorphic,
    id: Field::Number,
    username: Field::String,
    firstname: Field::String,
    lastname: Field::String,
    email: Field::String,
    sign_in_count: Field::Number,
    last_sign_in_at: Field::DateTime,
    company: Field::String,
    location: Field::String,
    phone: Field::String,
    admin: Field::Boolean,
    unconfirmed_email: Field::String
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    invited_by
    firstname
    lastname
    sign_in_count
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    invited_by
    id
    username
    firstname
    lastname
    email
    sign_in_count
    last_sign_in_at
    company
    location
    phone
    admin
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    username
    firstname
    lastname
    email
    company
    location
    phone
    admin
  ].freeze

  # Overwrite this method to customize how members are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(member)
    member.fullname
  end
end
