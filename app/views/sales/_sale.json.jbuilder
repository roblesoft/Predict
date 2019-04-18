json.extract! sale, :id, :name, :price, :key, :quantity, :month_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
