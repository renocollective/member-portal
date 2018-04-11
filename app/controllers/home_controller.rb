# frozen_string_literal: true

# Home Page Controller
class HomeController < ApplicationController
  before_action :check_login, only: %i[index]
  def index
    @new_conversation = Post.new
    @conversations = Post.order(created_at: :desc).last(10)
    @announcements = Announcement.order(created_at: :desc).last(3)
  end

  def check_login
    redirect_to '/members/sign_in' unless member_signed_in?
  end
end
