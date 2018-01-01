class AddColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :photo_1, :string
    add_column :products, :photo_2, :string
    add_column :products, :photo_3, :string
    add_column :products, :photo_4, :string
    add_column :products, :photo_5, :string
  end
end
