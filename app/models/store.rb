class Store < ApplicationRecord
	has_many :orders
	has_many :storages
	
end
