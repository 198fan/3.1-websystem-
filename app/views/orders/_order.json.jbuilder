json.extract! order, :id, :order_id, :transdate, :created_at, :updated_at, :store_id, :customer_id, :money
json.url order_url(order, format: :json)
