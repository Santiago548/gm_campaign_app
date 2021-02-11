class CharactersController < ApplicationController

    def new
        @users = User.all
        @campaigns = Campaign.all
        # possible working method, may need to refactor.
    if logged_in? && current_user.game_master == false
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            @character = @user.characters.build 
        else
            @character = Character.new
            @character.build_user
        end
    else
        render partial: 'layouts/errors_player'
    end
    end 

    def show
        @character = Character.find_by(id: params[:id])
    end 
    
    def index
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
        @characters = @user.characters
        else
        @characters =Character.all
        end
    end 

    def create
        @character = Character.new(character_params)
        if @character.save
            redirect_to character_path(@character)
        else
            @errors = @character.errors.full_messages
            render new_character_path
        end
    end 

    def edit
        @character = Character.find_by(id: params[:id])
    end

    def update
        @character = Character.find_by(id: params[:id])
        # if logged_in? && current_user.id == character.user_id
        @character.update(character_params)
        redirect_to character_path(@character)
        # end
    end 

    def destroy
        character = Character.find_by(id: params[:id])
        # if current_user && current_user.id == character.user_id
        character.destroy
        redirect_to characters_path
        # end 
    end 

    private

    def character_params
        params.require(:character).permit(
            :name, 
            :level, 
            :race, 
            :character_class, 
            :armor_class, 
            :speed, 
            :strength, 
            :dexterity, 
            :constitution, 
            :intelligence, 
            :wisdom, 
            :charisma,
            :user_id, 
            :campaign_id,
            :language_1, 
            :language_2,
            :weapon_1,
            :weapon_2,
            :armor_1,
            :skill_1,
            :skill_2
        ) 
    end 
end
