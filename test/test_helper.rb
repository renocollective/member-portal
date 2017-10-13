# frozen_string_literal: true

require 'simplecov'
SimpleCov.start 'rails' do
  add_filter 'bundle|vendor'
end

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

module ActiveSupport
  class TestCase
    fixtures :all
  end
end
