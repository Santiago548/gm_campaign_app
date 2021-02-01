class AddCharacterIdToProficienciesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :proficiencies, :character_id, :integer
  end
end
