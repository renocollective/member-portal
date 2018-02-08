# frozen_string_literal: true

require 'simplecov'
SimpleCov.start 'rails' do
  add_filter 'bundle|vendor'
end

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/mini_test'

module ActiveSupport
  class TestCase
    include FactoryBot::Syntax::Methods
  end
end
