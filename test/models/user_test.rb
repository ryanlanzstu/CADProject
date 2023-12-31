require "test_helper"

def setup
  @user = users(:one)  # Use the user fixture with ID 1
end

class UserTest < ActiveSupport::TestCase
  fixtures :users  # Include the users fixture
  test "should create a new user" do
    user = User.create(email: 'test@example.com', password: 'password123')
    assert user.valid?
  end

  test "should not create a user without email" do
    user = User.create(password: 'password123')
    assert_not user.valid?
  end
end
