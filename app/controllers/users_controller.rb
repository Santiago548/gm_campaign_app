class UsersController < ApplicationController
    def index
        @users = users.all
    end

    def new
        @user = User.new
    end
    
    def create
        if (user = User.create(user_params))
          session[:player_id] = user.id
          redirect_to user_path(user)
        else
          render 'new'
        end
    end
    
    def show
        @user = User.find_by(id: params[:id])
    end

    def edit
        @user = User.find_by(id: params[:id])
        #place code here for edit
    end
    
    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        redirect_to user_path(user)
    end
    
    private
    
    def user_params
        params.require(:user).permit(
          :username,
          :email,
          :password,
          :name,
          :age,
          :uid,
          :provider,
          :game_master_id
        )
    end
end
