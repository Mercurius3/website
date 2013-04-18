class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, notice: 'Uw account is aangemaakt!'
    else
      flash[:alert] = "Er is een probleem met het maken van uw account!"
      render :action => 'new'
    end
  end
end
