# frozen_string_literal: true

module Admin
  # admin member dashboard controller
  class PostsController < Admin::ApplicationController
    # Define a custom finder by overriding the `find_resource` method:
    def find_resource(_post)
      Post.find_by_slug(params[:slug])
    end
  end
end
