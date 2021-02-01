class RemoveProficiencyIdAndlanguageIdFromCharacters < ActiveRecord::Migration[6.1]
  def change
    remove_column :characters, :language_id
    remove_column :characters, :proficiency_id
  end
end
