# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

(1..100).each do |i|
	Order.create(
		order_id: i,
		transdate: Date.today - i.days,
		store_id: 1,
		customer_id: rand(1..4),
		money: rand(1000...10000),
		created_at: Time.now,
		updated_at: Time.now
		)

end