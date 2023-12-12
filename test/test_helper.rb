ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  # parallelize(workers: :number_of_processors, with: :threads)
  fixtures :all

  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers

#   def login(user)
#     if integration_test?
#       login_as(user, scope: :user)
#     else
#       sign_in(user)
#     end
#   end
end
