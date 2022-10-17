require "test_helper"

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get poirot" do
    get page_poirot_url
    assert_response :success
  end
end
