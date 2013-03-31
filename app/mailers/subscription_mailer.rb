class SubscriptionMailer < ActionMailer::Base
  default from: "axelgraff@gmail.com"

  def subscription_confirmation(subscription)
    @subscription = subscription
    # @product = Product.find(@subscription.product)
    mail(:to => subscription.user.email, :subject => "Aanmelding")
  end

end