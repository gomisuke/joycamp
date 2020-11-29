require 'test_helper'

class Publisher::PublishersControllerTest < ActionDispatch::IntegrationTest
  test "should get management" do
    get publisher_publishers_management_url
    assert_response :success
  end

end
