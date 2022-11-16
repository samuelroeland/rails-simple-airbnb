require "faker"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying current Database"
Flat.destroy_all

puts "Creating 5 new flats..."
5.times do
  flat = Flat.create!(
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: rand(50..2000),
    number_of_guests: rand(1..15)
  )
  puts "Flat with id #{flat.id} created"
end
puts "Finished"
