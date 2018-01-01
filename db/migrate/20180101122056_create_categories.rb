class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name
      t.string :cat_photo
      t.boolean :cat_status

      t.timestamps null: false
    end
  end
end
