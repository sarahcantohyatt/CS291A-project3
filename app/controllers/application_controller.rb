class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :require_login
  
  private
  def require_login
    unless current_user
      redirect_to login_path
    end
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  def content_not_found
    render file: "#{Rails.root}/public/404.html", layout: true, status: :not_found
  end
end
