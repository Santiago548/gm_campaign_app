class CreateCampaigns < ActiveRecord::Migration[6.1]
  def change
    create_table :campaigns do |t|
      t.datetime :start_date 
      t.datetime :end_date
      t.datetime :next_session
      t.integer :game_master_id
      t.integer :character_id
      t.integer :player_id

      t.timestamps
    end
  end
end
