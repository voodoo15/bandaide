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
  "Punk",
  "Glam",
  "Britpop",
  "Indie",
  "Rock & Roll"
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
    email: 'kirk_hammett@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    firstname: 'Kirk',
    lastname: 'Hammett',
    address: '722 College St',
    city: 'Toronto',
    province: 'ON',
    postalcode: 'M6G 1C2',
    description: 'I love hash cookies and rock and roll',
    avatar: open(Rails.root + "app/assets/images/demo_images/kirk_hammett.jpg"),
    youtube_url: 'https://www.youtube.com/watch?v=aE2nIii_p68'
  )

  Skill.create!(
    musician_id: 1,
    position_id: 3,
    mainskill: true
  )

  Musician.create!(
    email: 'james_hetfield@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    firstname: 'James',
    lastname: 'Hetfield',
    address: '147 Danforth Ave',
    city: 'Toronto',
    province: 'ON',
    postalcode: 'M4K 1N2',
    description: 'I love/hate Lars',
    avatar: open(Rails.root + "app/assets/images/demo_images/james_hetfield.jpg"),

    youtube_url: 'https://www.youtube.com/watch?v=IfalN7ZWLek'
  )

  Skill.create!(
    musician_id: 2,
    position_id: 1,
    mainskill: true
  )

  Musician.create!(
    email: 'lars_ulrich@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    firstname: 'Lars',
    lastname: 'Ulrich',
    address: '340 Yonge St',
    city: 'Toronto',
    province: 'ON',
    postalcode: 'M5G 1H1',
    description: "I can drum...really...I'm not that bad a drummer",
    avatar: open(Rails.root + "app/assets/images/demo_images/lars_ulrich.jpg"),
    youtube_url: 'https://www.youtube.com/watch?v=0QYfd9UPXvw'
  )

  Skill.create!(
    musician_id: 3,
    position_id: 2,
    mainskill: true
  )

  Musician.create!(
    email: 'anthony_kiedis@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    firstname: 'Anthony',
    lastname: 'Kiedis',
    address: '240 Front St W',
    city: 'Toronto',
    province: 'ON',
    postalcode: 'M5V 2W6',
    description: "Best singer...EVER!",
    avatar: open(Rails.root + "app/assets/images/demo_images/anthony_kiedis.jpg"),
    youtube_url: 'https://www.youtube.com/watch?v=o1HCEYZ6p5Y'
  )

  Skill.create!(
    musician_id: 4,
    position_id: 1,
    mainskill: true
  )

  Musician.create!(
    email: 'flea@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    firstname: 'Flea',
    lastname: 'Balzary',
    address: '500 King St E',
    city: 'Toronto',
    province: 'ON',
    postalcode: 'M5A 1M1',
    description: "Flea...nuff said",
    avatar: open(Rails.root + "app/assets/images/demo_images/flea.jpg"),
    youtube_url: 'https://www.youtube.com/watch?v=5FrI5lNvCnQ'
  )

  Skill.create!(
    musician_id: 5,
    position_id: 4,
    mainskill: true
  )

  Musician.create!(
    email: 'mick_jagger@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    firstname: 'Mick',
    lastname: 'Jagger',
    address: '450 Dundas St W',
    city: 'Toronto',
    province: 'ON',
    postalcode: 'M5T 1G7',
    description: "Maroon 5 wrote a song about my moves...",
    avatar: open(Rails.root + "app/assets/images/demo_images/mick_jagger.jpg"),
    youtube_url: 'https://www.youtube.com/watch?v=jf35K2Ps_aY'
  )

  Skill.create!(
    musician_id: 6,
    position_id: 1,
    mainskill: true
  )

  Musician.create!(
    email: 'keith_richards@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    firstname: 'Keith',
    lastname: 'Richards',
    address: '20 Nassau St',
    city: 'Toronto',
    province: 'ON',
    postalcode: 'M5T 1M2',
    description: "Original pirate of the Caribbean",
    avatar: open(Rails.root + "app/assets/images/demo_images/keith_richards.png"),
    youtube_url: 'https://www.youtube.com/watch?v=nPD8hbU-7Kg'
  )

  Skill.create!(
    musician_id: 7,
    position_id: 3,
    mainskill: true
  )

  Musician.create!(
    email: 'ron_wood@gmail.com',
    password: '123456',
    password_confirmation: '123456',
    firstname: 'Ron',
    lastname: 'Wood',
    address: '185 Lansdowne Ave',
    city: 'Toronto',
    province: 'ON',
    postalcode: 'M6K 2V9',
    description: "What can I say?  I'm an alcoholic, it's what I do...",
    youtube_url: 'https://www.youtube.com/watch?v=KzRYQz_ramI'
  )

  Skill.create!(
    musician_id: 8,
    position_id: 3,
    mainskill: true
  )

  Musician.create!(
  email: 'vinnebago@vinnebago.com',
  password:'123456',
  password_confirmation:'123456',
  firstname:'Sean',
  lastname:'Corkcicle',
  address: '500 Yonge St',
  city: 'Toronto',
  province: 'ON',
  postalcode: 'M4Y 1X9',
  description: 'I smell eggs',
  avatar: Faker::Avatar.image
  )

  Skill.create!(
    musician_id: 9,
    position_id: 3,
    mainskill: true
  )

  # Musician.create!(
  #   email: 'justin_bieber@gmail.com',
  #   password: '123456',
  #   password_confirmation: '123456',
  #   firstname: 'Justin',
  #   lastname: 'Bieber',
  #   address: '220 King St W',
  #   city: 'Toronto',
  #   province: 'ON',
  #   postalcode: 'M5H 1K4',
  #   description: "Stratford's finest...I'm Sorry...Jailbait",
  #   youtube_url: 'https://www.youtube.com/watch?v=fRh_vgS2dFE'
  # )

Band.create!(
  name: 'Metallica',
  description: "We're the best thrash metal band in the world!",
  genre_id: 2,
  poster: open(Rails.root + "app/assets/images/demo_images/metallica.jpg"),
  musician_id: 1
)

Band.create!(
  name: 'Red Hot Chili Peppers',
  description: "Give it away now!",
  genre_id: 4,
  poster: open(Rails.root + "app/assets/images/demo_images/red_hot_chili_peppers.jpg"),
  musician_id: 4
)

Band.create!(
  name: 'The Rolling Stones',
  description: "We've been around since Christ wore short pants",
  genre_id: 1,
  poster: open(Rails.root + "app/assets/images/demo_images/rolling_stones.jpg"),
  musician_id: 6
)

positions = [
  "Singer",
  "Drummer",
  "Lead",
  "Bass",
  "Keyboard"
]

positions.each do |position|
  Position.create!(description: position)
end

# i = 1
# 15.times do
#   Skill.create!(
#   musician_id: i,
#   position_id: [*1..7].sample,
#   mainskill: true
#   )
#   i = i + 1
# end

Member.create!(
  musician_id:  1,
  band_id:  1,
  position_id:  3
)

Member.create!(
  musician_id:  2,
  band_id:  1,
  position_id:  1
)

Member.create!(
  musician_id:  3,
  band_id:  1,
  position_id:  2
)

Member.create!(
  musician_id:  4,
  band_id:  2,
  position_id:  1
)

Member.create!(
  musician_id:  5,
  band_id:  2,
  position_id:  4
)

Member.create!(
  musician_id:  6,
  band_id:  3,
  position_id:  1
)

Member.create!(
  musician_id:  7,
  band_id:  3,
  position_id:  3
)

Member.create!(
  musician_id:  8,
  band_id:  3,
  position_id:  3
)
