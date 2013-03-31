class MessagesController < ApplicationController
  def new
    @message = Message.new
    @user = @message.build_user
  end

  def create
    @message = Message.new(params[:message])
    puts @message.inspect
    if @message.save
      MessageMailer.message_confirmation(@message).deliver
      redirect_to root_path, notice: "Wij hebben uw bericht ontvangen en een ontvangsbestiging verzonden naar uw emailadres: #{@message.user.email}!"
    else
      flash[:alert] = "Er is een probleem"
      render :action => 'new'
    end
  end
end
