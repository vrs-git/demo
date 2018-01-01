class ChangeColumnOfProducts < ActiveRecord::Migration
  def change
   change_column :products , :product_name , :string , null: false
   change_column :products,  :MRP , :integer , null: false
   change_column :products , :SP , :integer , null: false
   change_column :products , :discount , :integer , null: false
   change_column :products , :active , :boolean , null: false
   change_column :products , :instock , :boolean , null: false
   change_column :products , :warranty_summary , :string , null: false
   change_column :products , :highlights , :string , null: false
   change_column :products , :owner_id , :integer, null: false
   change_column :products , :category_id , :integer , null: false
   change_column :products , :seller_name , :string , null: false
   change_column :products , :full_desp , :text , null: false
   change_column :products , :specification, :string , null: false
   change_column :products , :unit_in_order , :integer , null: false
   change_column :products , :unit_in_stock , :integer, null: false
   change_column :products , :unit_length , :integer , null: false
   change_column :products , :unit_bredth , :integer , null: false
   change_column :products , :unit_height , :integer , null: false
   change_column :products , :unit_weight , :integer , null: false

  end
end
