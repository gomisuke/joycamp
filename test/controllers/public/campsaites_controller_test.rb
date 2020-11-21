require 'test_helper'

class Public::CampsaitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_campsaites_index_url
    assert_response :success
  end

end
