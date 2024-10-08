require "test_helper"

class AniketControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aniket_index_url
    assert_response :success
  end
end
