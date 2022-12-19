json.extract! book, :id, :isbn, :title, :author, :pubcom, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
