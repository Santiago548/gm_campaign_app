class DropLanguages < ActiveRecord::Migration[6.1]
  def change
    drop_table :languages
  end
end
