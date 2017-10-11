require 'test_helper'

class ExtrasControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get extras_profile_url
    assert_response :success
  end

  test "should get home" do
    get extras_home_url
    assert_response :success
  end

end
