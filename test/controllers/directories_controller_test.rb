require "test_helper"

class DirectoriesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include Devise::Test::ControllerHelpers

  test "unauthenticated users cannot navigate to directories" do
    get '/directories'
    assert_response :failure
  end

  setup do
    get '/users/sign_in'
    sign_in users(:user_01)
    post user_session_url

    follow_redirect!
    assert_response :success
  end

  test "authenticated users can create directory" do
    get '/directories'
    assert_response :success
  end
end
