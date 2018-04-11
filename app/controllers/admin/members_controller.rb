# frozen_string_literal: true

module Admin
  # admin member dashboard controller
  class MembersController < Admin::ApplicationController
    # Define a custom finder by overriding the `find_resource` method:
    def find_resource(username)
      Member.find_by(username)
    end
  end
end
