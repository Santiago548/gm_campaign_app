class CreateCampaigns < ActiveRecord::Migration[6.1]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :gm_name
      t.string :gm_email
      t.string :gm_phone_number
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :next_session
      t.boolean :session_active
      t.text :quest_log
      
      t.timestamps
    end
  end
end
