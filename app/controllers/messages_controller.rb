class MessagesController < ApplicationController
  def new
    @message = Message.new
    @user = @message.build_user
    puts "Nu hebben we een user gebouwd"
  end

  def create
    user = params[:message][:user_attributes]
    @user = User.find_or_create_by_email(email: user[:email])
    @user.first_name ||= user[:first_name]
    @user.last_name ||= user[:last_name]
    @user.save!
    @message = Message.new
    @message.user_id = @user.id
    @message.content = params[:message][:content]  
    puts "hier zijn we"
    puts @user.inspect
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
