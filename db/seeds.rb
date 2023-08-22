# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker'

10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.city,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )
end

# Create fake tool rental listings
10.times do
  Tool.create!(
    name: Faker::Appliance.equipment,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price(range: 10..100),
    availability: [true, false].sample,
    category: ['professional', 'beginners'].sample,
    size: ['small', 'heavy', 'voluminous'].sample,
    image: Faker::LoremFlickr.image(size: "50x60", search_terms: ['tools']),
    user_id: rand(0..10)
  )
end
