# frozen_string_literal: true

# Home Page Controller
class HomeController < ApplicationController
  before_action :check_login, only: %i[index]
  def index
    @conversations = Post.order(created_at: :desc).last(10)
  end

  def check_login
    redirect_to '/members/sign_in' unless member_signed_in?
  end
end
