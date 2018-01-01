class ChangeCategory < ActiveRecord::Migration
  def change
  	change_column :categories , :cat_photo_file_name, :string , null: false
  	change_column :categories , :cat_photo_content_type, :string,  null: false
  	change_column :categories , :cat_photo_file_size, :integer, null: false
  	change_column :categories , :cat_photo_updated_at, :datetime, null: false
  end
end
