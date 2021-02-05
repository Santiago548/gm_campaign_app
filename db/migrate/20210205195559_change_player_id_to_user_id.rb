class ChangePlayerIdToUserId < ActiveRecord::Migration[6.1]
  def change
    rename_column :characters, :player_id, :user_id
  end
end
