class MessageMailer < ActionMailer::Base
  # TODO: check if sendmail is working in production!!!
  default from: "axelgraff@gmail.com"

  def message_confirmation(message)
    @user = User.first
    @message = message
    mail(:to => @user.email, :subject => "Bericht")
  end
end