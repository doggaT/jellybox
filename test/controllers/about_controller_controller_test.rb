require "test_helper"

class AboutControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get "/about"
    assert_response :success
  end
end
