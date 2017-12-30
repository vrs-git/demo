class AddPhonenumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phnumber, :integer
    add_index :users, :phnumber, unique: true
  end
end
