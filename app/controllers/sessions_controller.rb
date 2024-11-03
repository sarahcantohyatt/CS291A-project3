class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end