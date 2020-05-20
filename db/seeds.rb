# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

timraue = { name: "Tim Raue", address: "Rudi-Deutschke-Straße", phone_number: "0123421312", category: "french" }
facil =  { name: "Facil", address: "Potsdamer Straße", phone_number: "0123421312", category: "french"}
goodfriends = { name: "Good Friends", address: "Kantstraße 30", phone_number: "0123421312", category: "chinese" }
kinza =  { name: "Kin Za", address: "Berlin", phone_number: "0123421312", category: "chinese" }
amano = { name: "a Mano", address: "Mitte", phone_number: "0123421312", category: "chinese" }

[ timraue, facil, goodfriends, kinza, amano ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"