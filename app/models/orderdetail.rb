class Orderdetail < ApplicationRecord
	has_many :books
	has_many :orders
end
