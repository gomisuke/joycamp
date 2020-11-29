require 'test_helper'

class Publisher::CampsitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get publisher_campsites_index_url
    assert_response :success
  end

end
