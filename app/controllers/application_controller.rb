# frozen_string_literal: true

# Main application controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
