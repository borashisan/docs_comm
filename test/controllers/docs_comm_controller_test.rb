require 'test_helper'

class DocsCommControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
  end
  
  test "should get new" do
    get signup_path
    assert_response :success
  end

end
