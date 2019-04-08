class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      log_in(user)
      flash[:success] = "Welcome to the Sample App!"
      redirect_to   user_path(user)
    else 
      flash[:danger] = "Invalide email and password"
      render 'new'
    end 
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
