class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :uid
      t.string :provider
      t.integer :game_master_id

      t.timestamps
    end
  end
end
