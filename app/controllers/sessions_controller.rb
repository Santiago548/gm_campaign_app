class SessionsController < ApplicationController
    skip_before_action :verified_player, only: [:new, :create]

  def new
    @player = Player.new
  end

  def create
    if @player = Player.find_by(name: params[:player][:name])
      session[:user_id] = @player.id
      redirect_to player_path(@player)
    else
      render 'new'
    end
  end

  def destroy
    session.delete("player_id")
    redirect_to root_path
  end
end
