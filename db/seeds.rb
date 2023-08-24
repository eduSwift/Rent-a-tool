# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
daniel = User.create!(
  first_name: “Daniel”,
  last_name: Name.last_name,
  address: Address.city,
  email: “dani@test.com”,
  password: 123456
)
Tool.create!(
  name: Faker::Appliance.equipment,
  description: Faker::Lorem.sentence,
  price: Faker::Commerce.price(range: 10..100),
  availability: [true, false].sample,
  category: [‘beginners’].sample,
  size: [‘small’,].sample,
  image: LoremFlickr.image(size: “50x60”, search_terms: [‘tools’]),
  user: daniel
