require "test_helper"

class DirectoriesControllerTest < ActionDispatch::IntegrationTest
  test "unauthenticated user should not get directories page" do
    get directories_path
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  include Devise::Test::IntegrationHelpers

  def setup
    @user = User.create(username: 'test one',
                        email: 'test_one@email.com',
                        encrypted_password: "<%= Devise::Encryptor.digest(User, 'password') %>")


  end

  test "authenticated users can navigate to directories" do
    sign_in @user

    get directories_path
    assert_response :success
  end

  test "authenticated users can create directory" do
    sign_in @user

    get new_directory_path
    assert_response :success

    Directory.create(name: 'images')

    get directories_path
    assert_text 'Images'
  end

  test "authenticated users can create subdirectory" do
    sign_in @user

    get new_directory_path
    assert_response :success

    images_directory = Directory.create(name: 'images')

    Directory.create(name: 'sub', parent_id: images_directory.id)
    get "/directories/#{images_directory.id}"
    assert_select 'td', text: 'Sub'
  end

  test "authenticated users can upload a file to a directory" do
    sign_in @user

    get new_directory_path
    assert_response :success

    images_directory = Directory.create(name: 'images')

    file_path = 'test/fixtures/files/test_file1.jfif'
    filename = File.basename(file_path)
    images_directory.files.attach(io: File.open(file_path), filename: filename)

    get "/directories/#{images_directory.id}"
    assert_text 'test_file1.jfif'
  end
end
