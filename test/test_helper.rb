ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require File.expand_path('../../config/environment', __FILE__)
require "minitest/reporters"
Minitest::Reporters.use!
require 'rails/test_help'

class ActiveSupport::TestCase
 
  fixtures :all

  # Returns true if a test user is logged in.
  def is_logged_in?
    !session[:user_id].nil?
  end
end
