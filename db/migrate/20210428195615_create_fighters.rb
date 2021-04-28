class CreateFighters < ActiveRecord::Migration[6.1]
  def change
    create_table :fighters do |t|
      t.string :username
      t.string :weightclass
      t.integer :cellnum
      t.string :details
      t.string :image

      t.timestamps
    end
  end
end
