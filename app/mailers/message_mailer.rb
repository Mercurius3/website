class MessageMailer < ActionMailer::Base
  default from: "axelgraff@gmail.com"

  def message_confirmation(message)
    @user = User.first
    @message = message
    mail(:to => user.email, :subject => "Bericht")
  end
end