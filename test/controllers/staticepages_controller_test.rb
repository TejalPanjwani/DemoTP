require 'test_helper'

class StaticepagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get staticepages_home_url
    assert_response :success
  end

  test "should get help" do
    get staticepages_help_url
    assert_response :success
  end

end
