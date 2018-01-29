# frozen_string_literal: True

# path afte user confirms email
class ConfirmationsController < Devise::ConfirmationsController
  private

  def after_confirmation_path_for(resource_name, resource)
    'members#index'
  end
end
