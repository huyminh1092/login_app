class TeachersController < ApplicationController

    def index
    end
    
    def new
        @teacher=Teacher.new
    end

    def create
        @teacher=Teacher.new teacher_params
        if @teacher.save
            flash[:success]="Register successfully"
            redirect_to teachers_path
        else
            flash[:failed]="Register failed"
            render new
        end
    end

    
    private
    def teacher_params
        params.require(:teacher).permit :name, :password, :password_confirmation
    end
end
