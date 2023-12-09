require "test_helper"

class AboutControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get
    about_path :success
  end
end
