class AddLanguagesArmorWeaponsArmorsSkillsToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :language_1, :string
    add_column :characters, :language_2, :string
    add_column :characters, :weapon_1, :string
    add_column :characters, :weapon_2, :string
    add_column :characters, :armor_1, :string
    add_column :characters, :skill_1, :string
    add_column :characters, :skill_2, :string
  end
end
