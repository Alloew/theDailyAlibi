require "test_helper"

class AsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get as_index_url
    assert_response :success
  end
end
