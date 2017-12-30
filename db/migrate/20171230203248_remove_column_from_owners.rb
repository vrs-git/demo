class RemoveColumnFromOwners < ActiveRecord::Migration
  def change
  	
  	remove_column :users, :phone
  end
end
