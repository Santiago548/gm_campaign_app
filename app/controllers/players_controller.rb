class PlayersController < ApplicationController
    def index
        @players = Player.all
    end

    def new
        @player = Player.new
    end
    
    def create
        if (player = Player.create(player_params))
          session[:player_id] = player.id
          redirect_to player_path(player)
        else
          render 'new'
        end
    end
    
    def show
        @player = Player.find_by(id: params[:id])
    end

    def edit
        @player = Player.find_by(id: params[:id])
        #place code here for edit
    end
    
    def update
        player = Player.find_by(id: params[:id])
        player.update(player_params)
        redirect_to player_path(player)
    end
    
    private
    
    def player_params
        params.require(:player).permit(
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
