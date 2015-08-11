class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_admin

  def current_admin
    @current_admin ||= Admin.find_by_session_token(session[:session_token])
  end

  def sign_in(admin)
    session[:session_token] = admin.reset_session_token!
  end

  def ensure_admin_logged_in
    redirect_to root_path unless current_admin
  end
end
