require 'test_helper'

class SubscriptionMailerTest < ActionMailer::TestCase
  def test_new_subscription_mail
    subscription = FactoryGirl.build(:subscription)
    email = SubscriptionMailer.subscription_confirmation(subscription).deliver
    assert !ActionMailer::Base.deliveries.empty?
  end
end