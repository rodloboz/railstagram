class AddAttributesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :about, :text
  end
end
