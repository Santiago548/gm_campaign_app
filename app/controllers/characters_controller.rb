class CharactersController < ApplicationController
    #layout 'character'
    def new
        if !!nil
        @character = Character.new
        else
            render :new
        end
    end 

    def show
        @character = Character.find_by(id: params[:id])
    end 
    
    def index
        @characters = Character.all 
    end 

    def create
        @character = Character.new(character_params)
        if @character.save
            redirect_to character_path(@character)
        else
            render :new
        end
    end 

    def edit
        @character = Character.find(params[:id])
    end

    def update
        character = Character.find(params[:id])
        character.update(character_params)
        redirect_to character_path(character)
    end 

    def destroy
        character = Character.find(params[:id])
        character.destroy
        redirect_to character_path
    end 


    private

    def character_params
        params.require(:character).permit(:name, :level,:race, :class, :armor_class, :speed, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :proficiency_id, :language_id, :player_id, :campaign_id)
    end 
end
