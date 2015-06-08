class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :admin?, :roaster?

  def current_user 
    @current_user ||= Roaster.find(session[:roaster_id]) if session[:roaster_id]
  end

  def authenticate
    redirect_to beanformed_root_path unless current_user
  end

  def admin?
    @current_user.role == "admin"
  end

  def roaster?
    @current_user.role == "roaster"
  end

  def admin 
    render status: 400, nothing: true unless admin?
  end

  def authorize
    render status: 400, nothing: true unless roaster? || admin?
  end

end
