class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end
    
    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
          @errors = @user.errors.full_messages
          render new_user_path
        end
    end
    
    def show
        @user = User.find_by(id: params[:id])
    end

    def edit
        @user = User.find_by(id: params[:id])
    end
    
    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        redirect_to user_path(user)
    end

    def destroy
        @user = User.find_by(id: params[:id])
        if logged_in? && current_user.id == @user.id
            @user.destroy
            redirect_to '/users'
        else
            redirect_to '/login'
        end
    end

    private
    
    def user_params
        params.require(:user).permit(
          :username,
          :email,
          :password,
          :first_name,
          :last_name,
          :age,
          :phone_number
          #:uid,
          #:provider,
        )
    end
end
