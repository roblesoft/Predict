json.extract! product, :id, :name, :price, :key, :quantity, :month_id, :created_at, :updated_at
json.url product_url(product, format: :json)
