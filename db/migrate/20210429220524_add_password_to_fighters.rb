class AddPasswordToFighters < ActiveRecord::Migration[6.1]
  def change
    add_column :fighters, :password_digest, :string
  end
end
