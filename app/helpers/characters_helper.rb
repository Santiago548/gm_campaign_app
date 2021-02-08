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
                <img src="/images/ranger.png" alt="Ranger" style="width:50px;height:50px;float:left;">
            when "Artificer"
                <img src="/images/artificer.png" alt="Artificer" style="width:50px;height:50px;float:left;">
            when "Barbarian"
                <img src="/images/barbarian.png" alt="Barbarian" style="width:50px;height:50px;float:left;">
            when "Bard"
                <img src="/images/bard.png" alt="Bard" style="width:50px;height:50px;float:left;">
            when "Druid"
                <img src="/images/druid.png" alt="Druid" style="width:50px;height:50px;float:left;">
            when "Fighter"
                <img src="/images/fighter.png" alt="Fighter" style="width:50px;height:50px;float:left;">
            when "Monk"
                <img src="/images/monk.png" alt="Monk" style="width:50px;height:50px;float:left;">
            when "Paladin"
                <img src="/images/paladin.png" alt="Palading" style="width:50px;height:50px;float:left;">
            when "Cleric"
                <img src="/images/cleric.png" alt="D20" style="width:50px;height:50px;float:left;">
            when "Rogue"
                <img src="/images/rogue.png" alt="D20" style="width:50px;height:50px;float:left;">
            when "Sorcerer"
                <img src="/images/sorcerer.png" alt="D20" style="width:50px;height:50px;float:left;">
            when "Warlock"
                <img src="/images/warlock.png" alt="D20" style="width:50px;height:50px;float:left;">
            when "Wizard"
                <img src="/images/wizard.png" alt="D20" style="width:50px;height:50px;float:left;">
        end
    end
end
