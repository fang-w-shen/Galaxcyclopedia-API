# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
num = 0
User.create!(name:  "Fang",
 email: "funkapunkafide@gmail.com",
 password:              "fang123",
 password_confirmation: "fang123",
 admin:     true,
 activated: true,
 activated_at: Time.zone.now,
 api_key:"#{num=num+1}")

5.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "fang123"
  User.create!(name:  name,
    email: email,
    password:              password,
    password_confirmation: password,
    activated: true,
    activated_at: Time.zone.now,
    api_key:"#{num=num+1}")
end

users = User.order(:created_at).take(6)

users[0].create!(content: content, picture:File.open(File.join(Rails.root, "background.png"))) }
users[1].create!(content: content, picture:File.open(File.join(Rails.root, "background.png"))) }
users[2].create!(content: content, picture:File.open(File.join(Rails.root, "background.png"))) }
users[3].create!(content: content, picture:File.open(File.join(Rails.root, "rails.png"))) }
users[4].create!(content: content, picture:File.open(File.join(Rails.root, "rails.png"))) }
users[5].create!(content: content, picture:File.open(File.join(Rails.root, "rails.png"))) }


# Following relationships
users = User.all
user  = users.first
following = users[1..5]
followers = users[1..5]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }