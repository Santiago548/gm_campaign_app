class AddGameMasterColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :game_master, :boolean
  end
end
