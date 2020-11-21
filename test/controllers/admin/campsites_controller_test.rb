require 'test_helper'

class Admin::CampsitesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_campsites_new_url
    assert_response :success
  end

  test "should get index" do
    get admin_campsites_index_url
    assert_response :success
  end

end
