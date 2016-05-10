# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

genres = [
  "Rock",
  "Heavy Metal",
  "Goth Rock",
  "Alternative",
  "Pop"
]

genres.each do |genre|
  Genre.create!(description:  genre)
end

5.times do
  Musician.create!(
    email:  Faker::Internet.email,
    password:  '123456',
    password_confirmation:  '123456',
    firstname:  Faker::Name.first_name,
    lastname:  Faker::Name.last_name,
    address:  Faker::Address.street_address,
    city:  Faker::Address.city,
    province:  'ON',
    postalcode:  'A1B2C3'
  )
end

Band.create!(
  name:  'Bless the Tyrant',
  description:  Faker::Lorem.sentence,
  genre_id:  [1, 2, 3, 4, 5].sample
)
