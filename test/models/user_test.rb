require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
  	@user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
  	assert @user.valid?
  end

  test "name should be present" do
  	@user.name = "     "
  	assert_not @user.valid?
  end

  test "email should be present" do
  	@user.email = "     "
  	assert_not @user.valid?
  end

  test "name should be too long" do
  	@user.name = "a" * 21
  	assert_not @user.valid?
  end

  test "email should de too long" do
  	@user.email = "@" * 20 + "@example.com"
  	assert_not @user.valid?
  end
end