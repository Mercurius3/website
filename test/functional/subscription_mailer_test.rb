require 'test_helper'

class SubscriptionMailerTest < ActionMailer::TestCase
  def test_new_subscription_mail
    subscription = stub(first_name: "Axel", last_name: "Graff", email: "axelgraff@gmail.com", product: stub(name: "Museumgroep"))
    email = SubscriptionMailer.subscription_confirmation(subscription).deliver
    assert !ActionMailer::Base.deliveries.empty?
  end
end