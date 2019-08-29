require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get teachers" do
    get user_teachers_url
    assert_response :success
  end

end
