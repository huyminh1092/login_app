class UsersController < ApplicationController

    def index     
    end

    def home
        @user = User.find_by id: session[:current_user_id]
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.new user_params
        if @user.save
            flash[:success]="Register success"
            redirect_to login_path
        else 
            render :new
            @error=@user.errors
           
        end
    end

    def show
        @user = User.find_by id: params[:id]
      end

    
    private
    def user_params
        params.require(:user).permit :name, :password, :password_confirmation
    end
end
