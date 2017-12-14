require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get campground" do
    get pages_campground_url
    assert_response :success
  end

  test "should get mobilhomepark" do
    get pages_mobilhomepark_url
    assert_response :success
  end

  test "should get estatepark" do
    get pages_estatepark_url
    assert_response :success
  end

end
