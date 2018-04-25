require 'test_helper'

class MessageControllerTest < ActionDispatch::IntegrationTest


  test "should get new" do
    get contact_path
    assert_response :success
  end

end
