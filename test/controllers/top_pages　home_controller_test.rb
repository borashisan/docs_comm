require 'test_helper'

class TopPages　homeControllerTest < ActionDispatch::IntegrationTest
  test "should get help" do
    get top_pages　home_help_url
    assert_response :success
  end

end
