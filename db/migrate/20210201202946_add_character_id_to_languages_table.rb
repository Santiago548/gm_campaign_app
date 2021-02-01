class AddCharacterIdToLanguagesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :languages, :character_id, :integer
  end
end
