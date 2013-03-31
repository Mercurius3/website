require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  def setup
    @message = build(:message)
  end

  test "Should not save empty message" do
    @message.content = nil
    assert !@message.save, "Saved message without content"
  end

  test "Should not save message without user" do
    @message.user = nil
    assert !@message.save, "Saved message without user"
  end

  test "User first_name should be John" do
    assert_equal @message.user.first_name, "John"
  end

  test "User last_name should be Doe" do
    assert_equal @message.user.last_name, "Doe"
  end

  test "User email should be johndoe@example.com" do
    assert_equal @message.user.email, "johndoe@example.com"
  end
end