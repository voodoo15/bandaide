# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

genres = [
  "Classical",
  "Heavy Metal",
  "Goth",
  "Alternative",
  "Pop",
  "Blues",
  "Psychadelic",
  "Punk",
  "Glam",
  "Britpop",
  "Indie",
  "Rock & Roll",
  "Jazz"
]

genres.each do |genre|
  Genre.create!(description:  genre)
end

20.times do
  Musician.create!(
    email:  Faker::Internet.email,
    password:  '123456',
    password_confirmation:  '123456',
    firstname:  Faker::Name.first_name,
    lastname:  Faker::Name.last_name,
    address:  Faker::Address.street_address,
    city:  Faker::Address.city,
    province:  'ON',
    postalcode:  'A1B 2C3',
    avatar: Faker::Avatar.image,
    latitude: rand(43.8828...43.6426),
    longitude:rand(77.0...77.3199)
  )
end

Band.create!(
  name:  'Bless the Tyrant',
  description:  Faker::Hipster.sentences,
  genre_id:  [*1..13].sample,
  poster: Faker::Avatar.image,
  musician_id: 1
)

positions = [
  "singer",
  "rhythm",
  "drummer",
  "lead",
  "acoustic",
  "bass",
  "keyboard"
]

positions.each do |position|
  Position.create!(description:  position)
end

Skill.create!(
  musician_id:  1,
  position_id:  1
)
