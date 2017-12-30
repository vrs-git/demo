class AddPhonenumberToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :phnumber, :string
    add_index :owners, :phnumber, unique: true
  end
end
