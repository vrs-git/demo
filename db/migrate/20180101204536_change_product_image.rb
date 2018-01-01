class ChangeProductImage < ActiveRecord::Migration
  def change
  	change_column :products , :image_1_file_name, :string , null: false
  	change_column :products , :image_1_content_type, :string,  null: false
  	change_column :products , :image_1_file_size, :integer, null: false
  	change_column :products, :image_1_updated_at, :datetime, null: false

  	change_column :products , :image_2_file_name, :string , null: false
  	change_column :products , :image_2_content_type, :string,  null: false
  	change_column :products , :image_2_file_size, :integer, null: false
  	change_column :products, :image_2_updated_at, :datetime, null: false

  	change_column :products , :image_3_file_name, :string , null: false
  	change_column :products , :image_3_content_type, :string,  null: false
  	change_column :products , :image_3_file_size, :integer, null: false
  	change_column :products, :image_3_updated_at, :datetime, null: false
  end
end
