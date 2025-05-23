# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all


restaurants = [
  { name: "Pasta Palace", address: "123 Roma St", category: "italian" },
  { name: "Sushi World", address: "456 Tokyo Ave", category: "japanese" },
  { name: "Le Gourmet", address: "789 Paris Blvd", category: "french" },
  { name: "Dragon Express", address: "101 Beijing Rd", category: "chinese" },
  { name: "Belgian Bites", address: "202 Brussels Sq", category: "belgian" }
]

restaurants.each do |restaurant_data|
  restaurant = Restaurant.create!(restaurant_data)
  puts "Created #{restaurant.name}"
end

puts "Seeding complete!"
