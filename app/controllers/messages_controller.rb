class MessagesController < ApplicationController
  def new
    @message = Message.new
    @user = @message.build_user
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      MessageMailer.delay.message_confirmation(@message)
      redirect_to root_path, notice: 'Wij hebben uw bericht ontvangen!'
    else
      flash[:alert] = "Er is een probleem"
      render :action => 'new'
    end
  end
end
