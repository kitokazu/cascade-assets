ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/rails/capybara"
require 'capybara/poltergeist'

module ActiveSupport
  class TestCase
    # Add more helper methods to be used by all tests here...
  end
end
