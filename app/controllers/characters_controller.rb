class CharactersController < ApplicationController

    def new
        @users = User.all
        @campaigns = Campaign.all
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            @character = @user.characters.build 
        elsif params[:campaign_id] && @campaign = Campaign.find_by_id(params[:campaign_id])
            @character = @campaign.characters.build
        else
            @character = Character.new
            @character.build_user
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
            render new_character_path
        end
    end 

    def edit
        @character = Character.find_by(id: params[:id])
    end

    def update
        # update_cahracter
        @character = Character.find_by(id: params[:id])
        if logged_in? && current_user.id == @character.user_id
            @character.update(character_params)
            redirect_to character_path(@character)
        elsif @character.user == nil
            @character.update(character_params)
            redirect_to character_path(@character)
        else
            render partial: 'layouts/errors_player'
        end
    end 

    def destroy
        character = Character.find_by(id: params[:id])
        if logged_in? && current_user.id == character.user_id
            character.destroy
            redirect_to characters_path
        elsif character.user == nil
            character.destroy
            redirect_to characters_path
        else
            render partial: 'layouts/errors_player'
        end 
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
