class ChangeColumnCategories < ActiveRecord::Migration
  def change
   
   change_column :categories , :cat_photo , :string , null: true

  end
end
