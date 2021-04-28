class CreateFights < ActiveRecord::Migration[6.1]
  def change
    create_table :fights do |t|
      t.integer :fighter_id
      t.integer :fightee_id
      t.integer :wage
      t.date :fightday

      t.timestamps
    end
  end
end
