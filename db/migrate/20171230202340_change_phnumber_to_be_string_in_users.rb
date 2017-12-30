class ChangePhnumberToBeStringInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :phnumber, :string
  end
end
