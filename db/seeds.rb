# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

4.times do
  Flat.create!(
    name: Faker::Book.title,
    address: Faker::Address.full_address,
    description: Faker::TvShows::RickAndMorty.quote,
    price_per_night: rand(20..100),
    number_of_guests: rand(1..5)
  )
end
