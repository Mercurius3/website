require 'test_helper'

class SubscriptionTest < ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods

  def setup
    product = build(:product)
    @subscription = build(:subscription, product: product)
  end

  test "should not save subscription without associated product" do
    @subscription.product_id = nil
    assert !@subscription.save, "Saved the subscription without associated product"
  end

  test "should not save subscription without first name" do
    @subscription.user.first_name = nil
    assert !@subscription.save, "saved the subscription without first name"
  end

  test "should not save subscription without last name" do
    @subscription.user.last_name = nil
    assert !@subscription.save, "saved the subscription without last name"
  end

  test "should not save subscription without email" do
    @subscription.user.email = nil
    assert !@subscription.save, "saved the subscription without email"
  end

  test "should not save subscription with ill formatted email (john)" do
    @subscription.user.email = "john"
    assert !@subscription.save, "saved the subscription with ill formatted email (john)"
  end

  test "should not accept subscription without acceptance of conditions" do
    @subscription.accept_conditions = false
    assert !@subscription.save, "Saved the subscription without acceptance of conditions"
  end
end
