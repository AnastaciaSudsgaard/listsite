require "test_helper"

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get poirot" do
    get menu_poirot_url
    assert_response :success
  end
end
