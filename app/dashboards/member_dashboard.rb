require "administrate/base_dashboard"

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
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    username: Field::String,
    firstname: Field::String,
    lastname: Field::String,
    email: Field::String,
    bio: Field::String,
    avatar: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String,
    last_sign_in_ip: Field::String,
    confirmation_token: Field::String,
    confirmed_at: Field::DateTime,
    confirmation_sent_at: Field::DateTime,
    company: Field::String,
    website_name: Field::String,
    website_url: Field::String,
    location: Field::String,
    work_pattern: Field::String,
    phone: Field::String,
    activities: Field::String,
    interests: Field::String,
    twitter: Field::String,
    facebook: Field::String,
    linkedin: Field::String,
    instagram: Field::String,
    slack: Field::String,
    role_id: Field::Number,
    role: Field::Number,
    admin: Field::Boolean,
    invitation_token: Field::String,
    invitation_created_at: Field::DateTime,
    invitation_sent_at: Field::DateTime,
    invitation_accepted_at: Field::DateTime,
    invitation_limit: Field::Number,
    invitations_count: Field::Number,
    unconfirmed_email: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :invited_by,
    :id,
    :created_at,
    :updated_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :invited_by,
    :id,
    :created_at,
    :updated_at,
    :username,
    :firstname,
    :lastname,
    :email,
    :bio,
    :avatar,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :sign_in_count,
    :current_sign_in_at,
    :last_sign_in_at,
    :current_sign_in_ip,
    :last_sign_in_ip,
    :confirmation_token,
    :confirmed_at,
    :confirmation_sent_at,
    :company,
    :website_name,
    :website_url,
    :location,
    :work_pattern,
    :phone,
    :activities,
    :interests,
    :twitter,
    :facebook,
    :linkedin,
    :instagram,
    :slack,
    :role_id,
    :role,
    :admin,
    :invitation_token,
    :invitation_created_at,
    :invitation_sent_at,
    :invitation_accepted_at,
    :invitation_limit,
    :invitations_count,
    :unconfirmed_email,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :invited_by,
    :username,
    :firstname,
    :lastname,
    :email,
    :bio,
    :avatar,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :sign_in_count,
    :current_sign_in_at,
    :last_sign_in_at,
    :current_sign_in_ip,
    :last_sign_in_ip,
    :confirmation_token,
    :confirmed_at,
    :confirmation_sent_at,
    :company,
    :website_name,
    :website_url,
    :location,
    :work_pattern,
    :phone,
    :activities,
    :interests,
    :twitter,
    :facebook,
    :linkedin,
    :instagram,
    :slack,
    :role_id,
    :role,
    :admin,
    :invitation_token,
    :invitation_created_at,
    :invitation_sent_at,
    :invitation_accepted_at,
    :invitation_limit,
    :invitations_count,
    :unconfirmed_email,
  ].freeze

  # Overwrite this method to customize how members are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(member)
  #   "Member ##{member.id}"
  # end
end
