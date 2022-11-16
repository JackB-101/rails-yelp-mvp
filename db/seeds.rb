# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", rating: 4}
mac_donalds =  {name: "Mac Donalds", address: "432, 436 Bethnal Grn Rd", rating: 3}
kfc =  {name: "KFC", address: "406 Bethnal Grn Rd", rating: 3}
big_nose =  {name: "Ze Big Nose", address: "paris", rating: 1}

[dishoom, pizza_east, mac_donalds, kfc, big_nose].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
