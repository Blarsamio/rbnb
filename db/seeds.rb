# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

Booking.destroy_all
Developer.destroy_all
User.destroy_all
puts 'creating seeds'

counter = 0

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653576097/cvqzr7prwiakvsnk1zis.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Ryad', rating: Faker::Number.between(from: 1, to: 5), description: "Hey, I'm Ryad I always knew that what I really wanted to do was to code !I'm planning to look for a job in the tech field either daily commute or remotely", last_name: 'Sari', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: 'student.jpg', content_type: 'image/png')
developer.user = user
developer.save
counter += 1

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575985/gdaaw4auztpfzs8ozd4n.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Judith', rating: Faker::Number.between(from: 1, to: 5), description: "I did the Le Wagon Data Science bootcamp in Amsterdam last year April.I stayed as a teacher (assistant) and started my company data science, mobile apps and Wordpress websites.", last_name: 'Van Leersum', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save
counter += 1


image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575907/mzpd6qctxtiu27x5vxza.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Julia', rating: Faker::Number.between(from: 1, to: 5), description: "Most of my friends are in programming so I decided to try it out with a few online courses and really enjoyed it. I want to find a job and start working in tech.", last_name: Faker::JapaneseMedia::DragonBall.planet, address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save
counter += 1

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575878/arkgbtwhpho1ifsixgpv.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Patricio', rating: Faker::Number.between(from: 1, to: 5), description: "I'm a wellness counselor,trying to balance that part of my life with my love for technology. I'd like to find a remote job to be able to travel the world and continue developing", last_name: 'Perez Herrero', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save
counter += 1

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575863/vusuqdk2z46kddkndgav.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Gordana', rating: Faker::Number.between(from: 1, to: 5), description: "I always liked automating processes, last year I started looking into data analytics.I hope to find a position afterwards that would allow me to continue learning.", last_name: 'Marjanovic', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save
counter += 1

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575850/ibxjq55bnegsxk7rpkxk.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Jaqueline', rating: Faker::Number.between(from: 1, to: 5), description: "I got interested in computer science.I went into bus dev within a tech startup. I've been in business development in a CPG company and then work in the innovation lab of an insurance company.", last_name: 'Maldonado', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save
counter += 1

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575833/wbbxuclvun9xkwqsiusq.png")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Lara', rating: Faker::Number.between(from: 1, to: 5), description: 'Last year I started learning Python in my free time just to see what coding is all about. I really enjoyed it and months later I know that this is what', last_name: 'Keen', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save
counter += 1

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575827/goxuf64qauohyhauqatd.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Olwyn', rating: Faker::Number.between(from: 1, to: 5), description: 'I started dabbling in programming languages and am now excited to become a developer. I hope to find a job as a Junior Developer and continue learning!', last_name: 'Hogan', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save
counter += 1

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575800/lwuth4v2lfmm1zgxhoqc.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Tomas', rating: Faker::Number.between(from: 1, to: 5), description: 'Learning to code as a way to transfer into the world of tech. Looking to get into Product Management / Strategy and learning to code will help me understand what it takes to develop something from scratch.', last_name: 'Quintanilha', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save
counter += 1

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575791/yvgxrdtwvejoiwn5r3cq.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'David', rating: Faker::Number.between(from: 1, to: 5), description: 'Caribbean wandering around, around, around. I love cats, Le Wagon, coffee and walking by the beach. I need more characters...', last_name: 'Mendoza', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575767/y8mms8cqppqqobgmyqx3.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Luis', rating: Faker::Number.between(from: 1, to: 5), description: 'I took a semester off in my university to attend a bootcamp and meet new people in a new city. I plan to land a great job and continue my studies.', last_name: 'Hernandez', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575754/esglpletxlyakxwezsc3.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Laura', rating: Faker::Number.between(from: 1, to: 5), description: 'I tried to work in the different industries. I would like become a Full-Stack developer. Initially I would like to work for a company that is settled in order to learn proper workflows.', last_name: 'Gil', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save

image = URI.open("https://res.cloudinary.com/diwzbnjyi/image/upload/v1653575192/n4r25qjteczojympvnt6.jpg")
user = User.create(email: Faker::Internet.free_email, password: 'hellop')
developer = Developer.new(first_name: 'Victor', rating: Faker::Number.between(from: 1, to: 5), description: 'I did a little bit of coding a while ago and I liked it, so thats why I want to learn coding. After Le Wagon my plan is to find a job and keep studing coding.', last_name: 'Benito Salvador', address: Faker::Address.full_address, language: Faker::ProgrammingLanguage.name)
developer.photo.attach(io: image, filename: "student#{counter}.jpg", content_type: 'image/png')
developer.user = user
developer.save

puts "#{Developer.count} developers created"
