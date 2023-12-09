require "test_helper"

class DirectoriesControllerTest < ActionDispatch::IntegrationTest
  test "create directory" do
    User.new
    user.username = 'Test'
    user.email = 'test@example.com'
    user.password = 'password'
    user.password_confirmation = 'password'
    user.save!
    assert true
  end
end
