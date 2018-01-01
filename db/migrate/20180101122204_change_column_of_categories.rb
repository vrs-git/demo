class ChangeColumnOfCategories < ActiveRecord::Migration
  def change
  	 change_column :categories , :category_name , :string , null:  false
  	 change_column :categories , :cat_photo , :string , null: false
  	 change_column :categories , :cat_status , :boolean , null: false
  	 
  end

end
