class Book < ApplicationRecord
	has_many :storages
	has_many :orderdetails
	has_rich_text :body
	has_one_attached :image

end
