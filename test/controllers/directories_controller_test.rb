require "test_helper"

class DirectoriesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::ControllerHelpers

  test "unauthenticated user should not get directories page" do
    get directories_path
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  # setup do
  #   get '/users/sign_in'
  #   sign_in users(:user_01)
  #   post user_session_url
  #
  #   follow_redirect!
  #   assert_response :success
  # end

  test "authenticated users can navigate to directories" do
    user = users(:one)
    sign_in user
    get directories_path
    assert_response :success
  end

  test "authenticated users can create directory" do
    user = users(:one)
    sign_in user
    get new_directory_path
    assert_response :success

    Directory.new(name: 'images')
    get directories_path
    assert_text 'Images'
  end

  test "authenticated users can create subdirectory" do
    user = users(:one)
    sign_in user
    get new_directory_path
    assert_response :success

    images_directory = Directory.new(name: 'images')
    Directory.new(name: 'sub', parent_id: images_directory.id)
    get "/directories/#{images_directory.id}"
    assert_text 'Sub'
  end

  test "authenticated users can upload a file to a directory" do
    user = users(:one)
    sign_in user
    get new_directory_path
    assert_response :success

    Directory.new(name: 'images')

    images_directory = Directory.where(name: 'images')

    file_path = '../fixtures/files/test_file1.jfif'
    filename = File.basename(file_path)
    images_directory.files.attach(io: File.open(file_path), filename: filename)

    get "directories/#{images_directory.id}"
    assert_text 'test_file1.jfif'
  end
end
