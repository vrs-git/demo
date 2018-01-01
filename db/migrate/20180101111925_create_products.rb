class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :MRP
      t.integer :SP
      t.integer :discount
      t.boolean :active
      t.boolean :instock
      t.string :warranty_summary
      t.string :highlights
      t.string :imp_note
      t.references :owner, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.string :seller_name
      t.text :full_desp
      t.string :specification
      t.string :installation
      t.integer :unit_in_order
      t.integer :unit_in_stock
      t.integer :unit_length
      t.string :unit_bredth
      t.integer :unit_height
      t.integer :unit_weight
      t.text :additional_features

      t.timestamps null: false
    end
  end
end
