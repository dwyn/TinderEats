# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  puts "loading seed data" + "..."
  
  20.times do
    
    Cuisine.create(name: Faker::Restaurant.type, nationality: Faker::Nation.nationality)

  	User.create(username: Faker::Internet.username, email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, home_location: Faker::Address.zip_code)

    Restaurant.create(name: Faker::Restaurant.name)

    Review.create(description: Faker::Restaurant.review)

    Contact.create(name: Faker::Name.name, role: Faker::Job.position, contact_type: Faker::PhoneNumber.phone_number )

    Location.create(street: Faker::Address.full_address)
  end
 