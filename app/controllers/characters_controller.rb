class CharactersController < ApplicationController
    #layout 'character'
    def new
        # possible working method, may need to refactor.
        @character = Character.new
        @users = User.all
        @campaigns = Campaign.all
        @character.languages.build(language_1: 'language one')
        @character.languages.build(language_2: 'language two')
        @character.languages.build(language_3: 'language three')
        @character.proficiencies.build(weapon_1: 'weapon_1')
        @character.proficiencies.build(weapon_2: 'weapon_2')
        @character.proficiencies.build(armor_1: 'armor_1')
        @character.proficiencies.build(armor_2: 'armor_2')
        @character.proficiencies.build(skill_1: 'weapon_1')
        @character.proficiencies.build(skill_2: 'skill_2')
    end 

    def show
        @character = Character.find_by(id: params[:id])
    end 
    
    def index
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
        @characters = @user.shoes
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
        @character = Character.find(params[:id])
    end

    def update
        character = Character.find(params[:id])
        # if logged_in? && current_user.id == character.user_id
        character.update(character_params)
        redirect_to character_path(character)
        # end
    end 

    def destroy
        character = Character.find(params[:id])
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
            languages_attributes: [:language_1, :language_2, :language_3],
            proficiencies_attributes: [:weapon_1, :weapon_2, :armor_1, :armor_2, :skill_1, :skill_2]
        ) 
    end 
end
