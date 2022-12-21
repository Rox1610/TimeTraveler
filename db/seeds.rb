require "open-uri"

puts 'Cleaning database...'
Booking.destroy_all
Era.destroy_all
User.destroy_all

puts 'Creating users...'
user_1 = User.create(email: "rox@example.com", password: "123456")

puts 'Creating eras...'

era_1 = Era.new(title: "Discover the reign of Toutânkhamon", content: "Would you like to try the Egyptians life? Try to revive the incredible atmosphere under Toutânkhamon reign!", price: "390", user: user_1)
file_1 = URI.open("https://res.cloudinary.com/ddubtsk96/image/upload/v1671647229/AirBnB%20Clone/Touta%CC%82nkhamon_jsubip.jpg")
era_1.photo.attach(io: file_1, filename: "toutânkhamon.jpg", content_type: "image/jpg")
era_1.save
