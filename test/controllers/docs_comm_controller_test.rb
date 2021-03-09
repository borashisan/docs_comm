require 'test_helper'

class DocsCommControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get docs_comm_home_url
    assert_response :success
  end

end
