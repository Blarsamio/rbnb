# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
Developer.destroy_all
User.destroy_all
puts 'creating seeds'
image_url = ("https://source.unsplash.com/random/300×300/?fake-face")

10.times do
  @user = User.create(email: Faker::Internet.free_email, password: 'hellop')
  @developer = Developer.new(first_name: Faker::JapaneseMedia::DragonBall.character, rating: Faker::Number.between(from: 1, to: 5), description: Faker::GreekPhilosophers.quote, last_name: Faker::JapaneseMedia::DragonBall.planet, address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
  @developer.image = image_url
  @developer.user = @user
  @developer.save
end

puts "#{Developer.count} developers created"

# 10.times do { Developer.create() }
