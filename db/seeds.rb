# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Creating 20 fake flats'
20.times do
  Flat.create(
    name: Faker::Name.unique.name,
    address: Faker::Address.unique.full_address,
    description: Faker::Lorem.paragraphs.join("\n\n"),
    price_per_night: Faker::Number.between(from: 50, to: 500),
    number_of_guests: Faker::Number.between(from: 1, to: 10)
  )
  puts "#{Flat.name} is create !"
end

puts 'Done'
