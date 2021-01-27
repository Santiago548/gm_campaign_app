class CreateGameMasters < ActiveRecord::Migration[6.1]
  def change
    create_table :game_masters do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :uid
      t.string :provider
      t.string :phone_number
      t.integer :player_id

      t.timestamps
    end
  end
end
