class SessionsController < ApplicationController

  def new
  end

  def create
    admin = Admin.find_by(email: params[:email])

    if admin && admin.authenticate(params[:password])
      session[:session_token] = admin.reset_session_token!
      redirect_to root_path
    else
      flash[:error] = "Incorrect email or password"
      redirect_to root_path
    end
  end

  def destroy
    current_admin.reset_session_token!
    session.clear
  end
end
