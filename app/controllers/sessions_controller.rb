class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by_name_and_pwd(params[:name], params[:pwd])
  	if @user
  		session[:user_id] = @user.id
  		redirect_to root_path
  	else
  		redirect_to new_session_path
  	end
  end
end
