class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :phone_number
      t.string :uid
      t.string :provider
      t.boolean :game_master

      t.timestamps
    end
  end
end
