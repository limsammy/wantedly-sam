class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Logged in as #{user.username}"
      redirect_to dashboard_path if current_user.default?
      redirect_to admin_dashboard_path if current_user.admin?
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)

    flash[:success] = "Logged Out"

    redirect_to root_path
  end

end
