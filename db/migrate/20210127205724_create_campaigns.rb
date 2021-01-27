class CreateCampaigns < ActiveRecord::Migration[6.1]
  def change
    create_table :campaigns do |t|
      t.start_date :datetime
      t.end_date :date_time
      t.next_session :datetime
      t.game_master_id :integer
      t.character_id :integer
      t.player_id :integer

      t.timestamps
    end
  end
end
