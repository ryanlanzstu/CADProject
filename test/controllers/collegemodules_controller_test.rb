# test/controllers/collegemodules_controller_test.rb
require 'test_helper'

class CollegemodulesControllerTest < ActionDispatch::IntegrationTest
include Devise::Test::IntegrationHelpers
  self.use_transactional_tests = false
  self.use_instantiated_fixtures = false

  fixtures :collegemodules, :users  # Include the users fixture

  setup do
    @user = users(:one)  # Use the user fixture
    sign_in @user
    @collegemodule = collegemodules(:one)
  end

  test "should get index" do
    get collegemodules_url
    assert_response :success
  end

  test "should get new" do
    get new_collegemodule_url
    assert_response :success
  end

  test "should create collegemodule" do
    assert_difference("Collegemodule.count") do
      post collegemodules_url, params: {
        collegemodule: {
          module_id: @collegemodule.module_id,
          module_lecturer: @collegemodule.module_lecturer,
          module_name: @collegemodule.module_name,
          user_id: @user.id  # Associate the module with the signed-in user
        }
      }
    end
  
    assert_redirected_to collegemodule_url(Collegemodule.last)
  end

  test "should show collegemodule" do
    get collegemodule_url(@collegemodule)
    assert_response :success
  end

  test "should get edit" do
    get edit_collegemodule_url(@collegemodule)
    assert_response :success
  end

  test "should update collegemodule" do
    patch collegemodule_url(@collegemodule), params: {
      collegemodule: {
        module_id: @collegemodule.module_id,
        module_lecturer: @collegemodule.module_lecturer,
        module_name: @collegemodule.module_name,
        user_id: @user.id  # Add the user_id
      }
    }
    assert_redirected_to collegemodule_url(@collegemodule)
  end

  test "should destroy collegemodule" do
    assert_difference("Collegemodule.count", -1) do
      delete collegemodule_url(@collegemodule)
    end

    assert_redirected_to collegemodules_url
  end
end
