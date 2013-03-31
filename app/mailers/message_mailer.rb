class MessageMailer < ActionMailer::Base
  default from: "axelgraff@gmail.com"

  def message_confirmation(message)
    @message = message
    mail(:to => @message.user.email, :subject => "Bericht")
  end
end