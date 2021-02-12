module CharactersHelper
    def character_languages
        ["Common",
        "Dwarvish",
        "Elvish",
        "Gnomish",
        "Goblin",
        "Halfling",
        "Orc"]
    end

    def character_weapons
        ["Simple Weapons",
        "Martial Weapons",
        "Firearms",
        "Exotic Weapons",]
    end

    def character_classes
        ["Barbarian",
         "Bard",
         "Cleric",
         "Druid",
         "Fighter",
         "Monk",
         "Paladin",
         "Ranger",
         "Rogue",
         "Sorcerer",
         "Warlock",
         "Wizard",
         "Artificer"]
    end

    def character_armors
        ["Unarmored",
         "Light-Armor",
         "Medium-Armor",
         "Heavy-Armor"]
    end

    def character_race
        ["Dragonborn",
         "Dwarf",
         "Elf",
         "Gnome",
         "Half-Elf",
         "Halfling",
         "Half-Orc",
         "Human",
         "Tiefling",
         "Orc of Exandria",
         "Leonin",
         "Satyr",
         "Genasi",
         "Goliath",
         "Aasimar",
         "Bugbear",
         "Firbolg",
         "Goblin",
         "Hobgoblin",
         "Kenku",
         "Kobold",
         "Lizardfolk",
         "Orc",
         "Tabaxi",
         "Triton",
         "Yuan-ti Pureblood",
         "Feral Tiefling",
         "Tortle",
         "Changeling",
         "Kalashtar",
         "Orc of Eberron",
         "Shifter",
         "Warforged",
         "Gith",
         "Centaur",
         "Loxodon",
         "Minotaur",
         "Simic hybrid",
         "Vedalken",
         "Verdan",
         "Locathah",
         "Grung"]
    end

    def character_skills
        ['Athletics',
         'Acrobatics',
         'Sleight of Hand',
         'Stealth',
         'Arcana',
         'History',
         'Investigation',
         'Nature',
         'Religion',
         'Animal Handling',
         'Insight',
         'Medicine',
         'Perception',
         'Survival',
         'Deception',
         'Intimidation',
         'Performance',
         'Persuasion']
    end

    def character_logo
        case @character.character_class 
            when "Ranger"
                image_tag "/images/ranger.png", style: 'width:100px;height:100px;float:right;'
            when "Artificer"
                image_tag "/images/artificer.png", style: 'width:100px;height:100px;float:right;'
            when "Barbarian"
                image_tag "/images/barbarian.png", style: 'width:100px;height:100px;float:right;'
            when "Bard"
                image_tag "/images/ranger.png", style: 'width:100px;height:100px;float:right;'
            when "Druid"
                image_tag "/images/druid.png", style: 'width:100px;height:100px;float:right;'
            when "Fighter"
                image_tag "/images/fighter.png", style: 'width:100px;height:100px;float:right;'
            when "Monk"
                image_tag "/images/monk.png", style: 'width:100px;height:100px;float:right;'
            when "Paladin"
                image_tag "/images/paladin.png", style: 'width:100px;height:100px;float:right;'
            when "Cleric"
                image_tag "/images/cleric.png", style: 'width:100px;height:100px;float:right;'
            when "Rogue"
                image_tag "/images/rouge.png", style: 'width:100px;height:100px;float:right;'
            when ",cerer"
                image_tag "/images/,cerer.png", style: 'width:100px;height:100px;float:right;'
            when "Warlock"
                image_tag "/images/warlock.png", style: 'width:100px;height:100px;float:right;'
            when "Wizard"
                image_tag "/images/wizard.png", style: 'width:100px;height:100px;float:right;'
            else
                "nope"
        end
    end

    def display_header
        if @user
            tag.fieldset(tag.h2("#{@user.first_name.capitalize}'s Characters"))
        else
            tag.fieldset(tag.h2("CHARACTERS:"))
        end
    end

    def display_campaign_field(t)
        if params[:campaign_id]
            t.hidden_field :campaign_id
        else
            render partial: 'campaign_select', locals: {f: t}
        end
    end
        
    def display_user_field(t)
        if params[:user_id]
            t.hidden_field :user_id
        else
            render partial: 'user_select', locals: {f: t}
        end
    end

    def display_nested_header
        if params[:user_id]
            tag.fieldset(tag.h2("Create a New Character , #{@user.first_name.capitalize}"))
        elsif params[:campaign_id]
            tag.fieldset(tag.h2("Create a New Character , the #{@campaign.name.capitalize} Campaign"))
        else
            tag.fieldset(tag.h2("Create a New Character"))
        end
    end

    

    def skill_strength
        case @character.strength
        when @character.strength = 1
            "12"
        when @character.strength = 2
            "14"
        when @character.strength = 3
            "16"
        when @character.strength = 4
            "18"
        when @character.strength = 5
            "20"
        when @character.strength = 6
            "22"
        end
    end

    def skill_dexterity
        case @character.dexterity
        when @character.dexterity = 1
            "12"
        when @character.dexterity = 2
            "14"
        when @character.dexterity = 3
            "16"
        when @character.dexterity = 4
            "18"
        when @character.dexterity = 5
            "20"
        when  @character.dexterity= 6
            "22"
        end
    end

    def skill_constitution
        case@character.constitution
        when @character.constitution = 1
            "12"
        when @character.constitution = 2
            "14"
        when @character.constitution = 3
            "16"
        when @character.constitution = 4
            "18"
        when @character.constitution = 5
            "20"
        when @character.constitution = 6
            "22"
        end
    end

    def skill_intelligence
        case@character.intelligence
        when @character.intelligence = 1
            "12"
        when @character.intelligence = 2
            "14"
        when @character.intelligence = 3
            "16"
        when @character.intelligence = 4
            "18"
        when @character.intelligence = 5
            "20"
        when @character.intelligence = 6
            "22"
        end
    end

    def skill_wisdom
        case@character.wisdom
        when @character.wisdom = 1
            "12"
        when @character.wisdom = 2
            "14"
        when @character.wisdom = 3
            "16"
        when @character.wisdom = 4
            "18"
        when @character.wisdom = 5
            "20"
        when @character.wisdom = 6
            "22"
        end
    end

    def skill_charisma
        case@character.charisma
        when @character.charisma = 1
            "12"
        when @character.charisma = 2
            "14"
        when @character.charisma = 3
            "16"
        when @character.charisma = 4
            "18"
        when @character.charisma = 5
            "20"
        when @character.charisma = 6
            "22"
        end
    end

    
end
