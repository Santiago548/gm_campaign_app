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
            when "Sorcerer"
                image_tag "/images/sorcerer.png", style: 'width:100px;height:100px;float:right;'
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
        
    def display_user_field(t)
        if params{:user_id}
            t.hidden_field :user_id
        else
            render parital: 'user_select', locals: {f: t}
        end
    end

    def display_nested_header
        if params[:user_id]
            tag.fieldset(tag.h2("Create a New Character for #{@user.first_name}"))
        else
            tag.fieldset(tag.h2("Create a New Character"))
        end
    end
end
