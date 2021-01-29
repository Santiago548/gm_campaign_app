class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.string :race
      t.string :class
      t.integer :armor_class
      t.integer :speed
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :proficiency_id
      t.integer :language_id
      t.integer :player_id
    

      t.timestamps
    end
  end
end
