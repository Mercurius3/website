class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      MessageMailer.message_confirmation(@message).deliver
      redirect_to root_path, notice: 'Wij hebben uw bericht ontvangen!'
    else
      flash[:alert] = "Er is een probleem"
      render :action => 'new'
    end
  end
end
