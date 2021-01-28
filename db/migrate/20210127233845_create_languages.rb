class CreateLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :languages do |t|
      t.string :language_1
      t.string :language_2
      t.string :language_3

      t.timestamps
    end
  end
end
