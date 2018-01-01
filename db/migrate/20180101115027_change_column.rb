class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :products, :photo_1 , :string , null: false
  		change_column :products, :photo_2 , :string , null: false
  			change_column :products, :photo_3 , :string , null: false
  				change_column :products,  :photo_4 , :string 
  					change_column :products, :photo_5 , :string 
  	change_column :categories, :category_name , :string , null: false
        	change_column :categories, :cat_photo , :string , null: false
        	     	change_column :categories, :cat_status, :boolean , null: false
  end
end
