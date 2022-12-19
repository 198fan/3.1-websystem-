class Storage < ApplicationRecord
	has_many :stores
	has_many :books
end
