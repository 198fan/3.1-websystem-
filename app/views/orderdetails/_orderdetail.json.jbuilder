json.extract! orderdetail, :id, :detnum, :amount, :price, :created_at, :updated_at
json.url orderdetail_url(orderdetail, format: :json)
