# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

require 'faker'
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
daniel = User.create!(
  first_name: 'Daniel',
  last_name: Name.last_name,
  address: Address.city,
  email: 'dani@test.com',
  password: '123456'
)

Booking.destroy_all
User.destroy_all
Tool.destroy_all


10.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.city,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6)
  )

  10.times do
    Tool.create!(
      name: Faker::Appliance.equipment,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price(range: 10..100),
      availability: [true, false].sample,
      category: ['professional', 'beginners'].sample,
      size: ['small', 'heavy', 'voluminous'].sample,
      image: Faker::LoremFlickr.image(size: "50x60", search_terms: ['tools']),
      user:
    )
  end
end

priscila = User.create!(
  first_name: "Priscila",
  last_name: Faker::Name.last_name,
  address: Faker::Address.city,
  email: "priscila@test.com",
  password: '123456'
)

Tool.create!(
  name: Faker::Appliance.equipment,
  description: Faker::Lorem.sentence,
  price: Faker::Commerce.price(range: 10..100),
  availability: [true, false].sample,
  image: LoremFlickr.image(size: “50x60”, search_terms: [‘tools’]),
  user: daniel,
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
  tool: priscila.tools.last
)
