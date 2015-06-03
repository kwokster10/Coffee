class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # when and where do I need this OAuth
  # before_action :authenticate

  def current_user 
  	@current_user ||= User.find(session[:roaster_id]) if session[:roaster_id]
  end

  def authenticate
  	redirect_to new_session_path unless current_user
  end

end
