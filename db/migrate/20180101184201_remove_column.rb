class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :categories , :cat_photo
  	remove_column :products ,:photo_1
  	remove_column :products ,:photo_2
  	remove_column :products ,:photo_3
  	remove_column :products ,:photo_4
  	remove_column :products ,:photo_5
  	
  end
end
