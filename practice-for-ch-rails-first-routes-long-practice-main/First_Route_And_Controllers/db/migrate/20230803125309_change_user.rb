class ChangeUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email

    change_column :users, :name, :string, null: false
    add_index :users, :name, unique: true
  end
end
