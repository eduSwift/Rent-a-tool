# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

require 'faker'
#
Booking.destroy_all
User.destroy_all
Tool.destroy_all
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

priscila = User.create!(
  first_name: "Priscila",
  last_name: Faker::Name.last_name,
  address: Faker::Address.city,
  email: "priscila@test.com",
  password: '123456'
)

daniel = User.create!(
  first_name: 'Daniel',
  last_name: Faker::Name.last_name,
  address: Faker::Address.city,
  email: 'dani@test.com',
  password: '234567'
)

clair = User.create!(
  first_name: "Clair",
  last_name: Faker::Name.last_name,
  address: Faker::Address.city,
  email: 'clair@test.com',
  password: '987654'
)

# 10.times do
#   user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     address: Faker::Address.city,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password(min_length: 6)
#   )
# end


Tool.create(
  name: "Hammer",
  description: "if I had a Hammer...",
  price: Faker::Commerce.price(range: 10..100),
  availability: [true, false].sample,
  image: "newtools/hammer.jpg",
  user: clair,
  category: ['professional', 'beginners'].sample,
  size: ['small', 'heavy', 'voluminous'].sample
)

Tool.create(
  name: "Standard Drill",
  description: "any hole is a goal",
  price: Faker::Commerce.price(range: 10..100),
  availability: [true, false].sample,
  image: "newtools/drill.jpeg",
  user: clair,
  category: ['professional', 'beginners'].sample,
  size: ['small', 'heavy', 'voluminous'].sample
)

Tool.create(
  name: "Chainsaw",
  description: "Texas Chainsaw Massacre",
  price: Faker::Commerce.price(range: 10..100),
  availability: [true, false].sample,
  image: "newtools/chainsaw.jpg.webp",
  user: daniel,
  category: ['professional', 'beginners'].sample,
  size: ['small', 'heavy', 'voluminous'].sample
)

Tool.create(
  name: "Screwdriver",
  description: "any one can play with my tool",
  price: Faker::Commerce.price(range: 10..100),
  availability: [true, false].sample,
  image: "newtools/screwdriver.jpeg",
  user: daniel,
  category: ['professional', 'beginners'].sample,
  size: ['small', 'heavy', 'voluminous'].sample
)

Tool.create(
  name: "Pliers",
  description: "sorry but not for nails",
  price: Faker::Commerce.price(range: 10..100),
  availability: [true, false].sample,
  image: "newtools/pliers.jpg",
  user: priscila,
  category: ['professional', 'beginners'].sample,
  size: ['small', 'heavy', 'voluminous'].sample
)

Tool.create(
  name: "Ladder",
  description: "Stairway to Heaven",
  price: Faker::Commerce.price(range: 10..100),
  availability: [true, false].sample,
  image: "newtools/ladder.jp",
  user: priscila,
  category: ['professional', 'beginners'].sample,
  size: ['small', 'heavy', 'voluminous'].sample
)

Booking.create!(
  start_date: Date.today + 1,
  end_date: Date.today + 2,
  user: priscila,
  tool: Tool.last
)

Booking.create!(
  start_date: Date.today + 1,
  end_date: Date.today + 2,
  user: User.last,
  tool: daniel.tools.last
)

Booking.create!(
  start_date: Date.today + 1,
  end_date: Date.today + 2,
  user: clair,
  tool: Tool.last
)
