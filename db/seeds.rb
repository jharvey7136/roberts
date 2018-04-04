# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)




Category.create(name: 'Campground')
Category.create(name: 'River Run')
Category.create(name: 'Estate Park')
Category.create(name: 'Random')


Topic.create(title: 'Campground')
Topic.create(title: 'River Run')
Topic.create(title: 'Estate Park')
