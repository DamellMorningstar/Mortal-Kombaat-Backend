class CreateFights < ActiveRecord::Migration[6.1]
  def change
    create_table :fights do |t|
      t.date :fightday
      t.integer :wage
      t.references :fighter, null: false, foreign_key: { to_table: :users }
      t.references :fightee, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
