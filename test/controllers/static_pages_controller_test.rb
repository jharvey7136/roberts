require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Roberts Enterprise"
  end

  test "should get root" do
    get root_path
    assert_response :success
  end


  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end


  test "should get campground" do
    get campground_path
    assert_response :success
    assert_select "title", "Campground | #{@base_title}"
  end

  test "should get mobile home park" do
    get mobilehome_path
    assert_response :success
    assert_select "title", "Mobile Home Park | #{@base_title}"
  end

  test "should get estate park" do
    get estatepark_path
    assert_response :success
    assert_select "title", "Estate Park | #{@base_title}"
  end







end
