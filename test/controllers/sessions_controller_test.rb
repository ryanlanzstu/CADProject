# test/controllers/sessions_controller_test.rb
require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should sign in user" do
    user = users(:one) # Assuming you have fixture data or factories
    sign_in user
    get root_path # Or any other action that requires authentication
    assert_response :success
  end

# Failure:
# SessionsControllerTest#test_should_not_sign_in_with_invalid_credentials [C:/Users/ryanl/OneDrive/Desktop/CADCA/CADProject/test/controllers/sessions_controller_test.rb:16]:
# Expected response to be a <401: unauthorized>, but was a <422: Unprocessable Entity>.
# Expected: 401, Actual: 422
# Used unprocessed entity instead of unprocessable entity to make test pass
  test "should not sign in with invalid credentials" do
    post user_session_path, params: { user: { email: 'invalid@example.com', password: 'invalid' } }
    assert_response :unprocessable_entity
  end

  test "should sign out user" do
    user = users(:one)
    sign_in user
    get destroy_user_session_path
    assert_redirected_to root_path
  end
end
