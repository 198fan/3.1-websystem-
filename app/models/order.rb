class Order < ApplicationRecord
	belongs_to :store
	belongs_to :customer
	has_many :orderdetails
end
