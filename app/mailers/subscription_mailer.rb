class SubscriptionMailer < ActionMailer::Base
  default from: "axelgraff@gmail.com"
  
  def subscription_confirmation(subscription)
    @subscription = subscription
    mail(:to => subscription.email, :subject => "Aanmelding")
  end
  
  def contact
    # TODO create contactmail
  end
end
