# frozen_string_literal: true

module Admin
  # admin member dashboard controller
  class PostsController < Admin::ApplicationController
    # Define a custom finder by overriding the `find_resource` method:
    def find_resource(slug)
      Post.find_by(slug)
    end
  end
end
