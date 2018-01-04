require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get role" do
    get users_role_url
    assert_response :success
  end

end
