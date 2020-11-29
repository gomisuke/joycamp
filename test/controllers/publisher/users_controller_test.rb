require 'test_helper'

class Publisher::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get publisher_users_index_url
    assert_response :success
  end

end
