ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  # parallelize(workers: :number_of_processors, with: :threads)
  fixtures :all, :users

  include Devise::Test::IntegrationHelpers

  def log_in(user)
    sign_in(user)
  end
end

class ActionController::TestCase
  include Devise::Test::ControllerHelpers
end
