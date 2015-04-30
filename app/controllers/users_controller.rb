class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def show
    if User.exists?(params[:id])
  	   @user = User.find(params[:id])
    else 
      if current_user.nil?
        redirect_to '/home'
      else
        redirect_to user_path(current_user)
      end
    end
  end
  
  def create
  	@user = User.new(user_params)
  	if @user.save
      log_in @user
  		flash[:success] = "Welcome to the Sample App"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def edit 
      if current_user.nil?
        redirect_to '/home'
      else
        @user = User.find(params[:id])
      end
  end

  private
	  def user_params
	  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
	  end


end
