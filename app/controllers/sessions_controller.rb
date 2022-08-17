class SessionsController < ApplicationController
  
  def new

  end

  def register
    @user = User.new
  end

  def create
    user = User.find_by name: params[:session][:name].downcase
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Login success"
      session[:current_user_id] = user.id
      redirect_to home_path
    else
      flash[:danger] = "Invalid username/password combination"
      render :new
    end
  end

  def destroy
    session.delete :current_user_id
  end

end
