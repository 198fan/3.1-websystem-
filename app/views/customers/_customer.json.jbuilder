json.extract! customer, :id, :custid, :name, :age, :email, :pass, :created_at, :updated_at
json.url customer_url(customer, format: :json)
