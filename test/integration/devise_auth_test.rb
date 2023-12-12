require "test_helper"

class DeviseAuthTest < ActionDispatch::IntegrationTest
  test "user can login" do
    get directories_path
    assert_response :redirect
    assert_redirected_to new_user_session_path

    user = user(:user_01)

    sign_in user
    get directories_path
    assert_response :success
  end
end