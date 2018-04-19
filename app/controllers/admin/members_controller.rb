# frozen_string_literal: true

module Admin
  # admin member dashboard controller
  class MembersController < Admin::ApplicationController
    # Define a custom finder by overriding the `find_resource` method:
    def find_resource(_username)
      Member.find_by_username(params[:username])
    end
  end
end
