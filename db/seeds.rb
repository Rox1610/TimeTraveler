require "open-uri"

puts 'Cleaning database...'
Message.destroy_all
Booking.destroy_all
Era.destroy_all
User.destroy_all

puts 'Creating users...'
user_1 = User.create(email: "rox@example.com", password: "123456")
user_2 = User.create(email: "user2@example.com", password: "123456")

puts 'Creating travels...'

era_1 = Era.new(title: "Discover the reign of Toutânkhamon", content: "Would you like to try the Egyptians life? Try to revive the incredible atmosphere under Toutânkhamon reign!", price: "390", user: user_1)
file_1 = URI.open("https://res.cloudinary.com/ddubtsk96/image/upload/v1671647229/AirBnB%20Clone/Touta%CC%82nkhamon_jsubip.jpg")
era_1.photo.attach(io: file_1, filename: "toutânkhamon.jpg", content_type: "image/jpg")
era_1.save

era_2 = Era.new(title: "Discover the reign of Mars", content: "Would you like to try the martian life? Come on board and join the invasion of the earth!", price: "590", user: user_2)
file_2 = URI.open("https://res.cloudinary.com/ddubtsk96/image/upload/v1671674580/AirBnB%20Clone/Mars-Attacks_y524ia.jpg")
era_2.photo.attach(io: file_2, filename: "mars-attacks.jpg", content_type: "image/jpg")
era_2.save

era_3 = Era.new(title: "Discover the reign of Robots", content: "Would you like to try the robot life? Choose this travel and join the robot invasion!", price: "450", user: user_2)
file_3 = URI.open("https://res.cloudinary.com/ddubtsk96/image/upload/v1671677143/AirBnB%20Clone/robots_kajiyd.png")
era_3.photo.attach(io: file_3, filename: "robots.jpg", content_type: "image/jpg")
era_3.save

era_4 = Era.new(title: "Discover the reign of Gladiators", content: "Want to assist to an incredible survival fight? Choose this travel and assist to an incredible gladiator fight in an antic coliseum!", price: "350", user: user_1)
file_4 = URI.open("https://res.cloudinary.com/ddubtsk96/image/upload/v1672886057/AirBnB%20Clone/gladiator_gfusa9.webp")
era_4.photo.attach(io: file_4, filename: "gladiator.jpg", content_type: "image/jpg")
era_4.save

puts 'Creating chatrooms...'

chatroom_1 = Chatroom.create(name: "General")
chatroom_2 = Chatroom.create(name: "Travels")
