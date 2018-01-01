json.extract! category, :id, :category_name, :cat_photo, :cat_status, :created_at, :updated_at
json.url category_url(category, format: :json)
