class CreateProficiencies < ActiveRecord::Migration[6.1]
  def change
    create_table :proficiencies do |t|
      t.string :weapon_1
      t.string :weapon_2
      t.string :armor_1
      t.string :armor_2
      t.string :skill_1
      t.string :skill_2

      t.timestamps
    end
  end
end
