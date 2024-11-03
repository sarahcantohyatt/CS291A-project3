class UsersController < ApplicationController
  skip_before_action :require_login
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if User.where(:name => @user.name).exists?
      @existing_user = User.find_by_name(@user.name)
      session[:user_id] = @existing_user.id
      redirect_to root_path
    else
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path
      else
        render :new
      end
    end
  end
  
  def logout
  end
  
  private
    def user_params
      params.require(:user).permit(:name)
    end

end
