class UsersController < ApplicationController
    def new
        @user = User.new
    end 

    def create
        @user = User.new(user_pramas)
        if @user.save
            # puts "=============================================="
            # puts @user.attributes.to_yaml
            # puts "============================================="
            # puts  @user.attributes
            # render :json=> @user
            flash[:success] = "Welcome to the Sample App!"
            redirect_to  users_path(@user)

        else
            render 'new'
        end
    end 

    def show
        @user = User.find(params[:id]) 
    end 


    private
    def user_pramas
        params.require(:users).permit(:name,:email,:password,:password_confirmation)
    end 


end
