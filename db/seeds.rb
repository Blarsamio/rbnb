# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Developer.destroy_all
puts 'creating seeds'

10.times do
  @user = User.create(email: Faker::Internet.free_email, password: 'hellop')
  @developer = Developer.new(rating: 4, description: 'testing devs')
  @developer.user = @user
  @developer.save
end

puts "#{Developer.count} developers created"

# 10.times do { Developer.create() }
