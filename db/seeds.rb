# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

genres = [
  "Classic",
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

# 5.times do
#   Musician.create!(
#     email: Faker::Internet.email,
#     password: '123456',
#     password_confirmation: '123456',
#     firstname: Faker::Name.first_name,
#     lastname: Faker::Name.last_name,
#     address: '2210 Markham Rd',
#     city: 'Scarborough',
#     province: 'ON',
#     postalcode: 'M1B 5V6',
#     description: Faker::Lorem.sentence,
#     avatar: Faker::Avatar.image
#   )
# end
#
# 5.times do
#   Musician.create!(
#     email: Faker::Internet.email,
#     password: '123456',
#     password_confirmation: '123456',
#     firstname: Faker::Name.first_name,
#     lastname: Faker::Name.last_name,
#     address: '220 King St W, Suite 200',
#     city: 'Toronto',
#     province: 'ON',
#     postalcode: 'M5H 1K4',
#     description: Faker::Lorem.sentence,
#     avatar: Faker::Avatar.image
#   )
# end
#
# 5.times do
#   Musician.create!(
#     email: Faker::Internet.email,
#     password: '123456',
#     password_confirmation: '123456',
#     firstname: Faker::Name.first_name,
#     lastname: Faker::Name.last_name,
#     address: '220 Yonge St',
#     city: 'Toronto',
#     province: 'ON',
#     postalcode: 'M5B 2H1',
#     description: Faker::Lorem.sentence,
#     avatar: Faker::Avatar.image
#   )
# end

  Musician.create!(
    email: kirk_hammett@gmail.com,
    password: '123456',
    password_confirmation: '123456',
    firstname: 'Kirk',
    lastname: 'Hammett',
    address: '220 Yonge St',
    city: 'Toronto',
    province: 'ON',
    postalcode: 'M5B 2H1',
    description: Faker::Lorem.sentence,
    avatar: Faker::Avatar.image,
    youtube_url
  )

Band.create!(
  name: 'Metallica',
  description: Faker::Lorem.sentence,
  genre_id: 1,
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
  Position.create!(description: position)
end

i = 1
15.times do
  Skill.create!(
  musician_id: i,
  position_id: [*1..7].sample,
  mainskill: true
  )
  i = i + 1
end
