require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get info_home_url
    assert_response :success
  end

  test "should get venue" do
    get info_venue_url
    assert_response :success
  end

  test "should get schedule" do
    get info_schedule_url
    assert_response :success
  end

  test "should get accommodation" do
    get info_accommodation_url
    assert_response :success
  end

  test "should get menu" do
    get info_menu_url
    assert_response :success
  end

  test "should get our_story" do
    get info_our_story_url
    assert_response :success
  end

  test "should get contact_us" do
    get info_contact_us_url
    assert_response :success
  end

end
