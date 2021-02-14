class UsersController < ApplicationController
    has_scope :game_master, type: :boolean
    has_scope :player, type: :boolean
    
    def index
       @users = apply_scopes(User).all
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
          render new_user_path
        end
    end
    
    def show
        @user = User.find_by(id: params[:id])
        @characters = Character.all
    end

    def edit
        @user = User.find_by(id: params[:id])
    end
    
    def update
        user = User.find_by(id: params[:id])
        if logged_in? && current_user.id == user.id
        user.update(user_params)
        redirect_to user_path(user)
        else
            render partial: 'layouts/errors_player'
        end
    end

    def destroy
        @user = User.find_by(id: params[:id])
        if logged_in? && current_user.id == @user.id
            @user.destroy
            redirect_to '/users'
        else
            render partial: 'layouts/errors_player'
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
          :phone_number,
          :game_master
          #:uid,
          #:provider,
        )
    end
end
