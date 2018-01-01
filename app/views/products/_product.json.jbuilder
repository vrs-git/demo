json.extract! product, :id, :product_name, :MRP, :SP, :discount, :active, :instock, :warranty_summary, :highlights, :imp_note, :owner_id, :category_id, :seller_name, :full_desp, :specification, :installation, :unit_in_order, :unit_in_stock, :unit_length, :unit_bredth, :unit_height, :unit_weight, :additional_features, :created_at, :updated_at
json.url product_url(product, format: :json)
