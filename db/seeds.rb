# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ruby encoding: utf-8
20.times do
  User.create(
    username: Faker::StarWars.planet,
    email: Faker::Internet.free_email,
    password: Faker::Internet.password(6, 20)
  )
end
100.times do
  Message.create(
    title: Faker::Pokemon.move,
    description: Faker::Lorem.paragraphs(rand(2..4)).join('\n'),
    user_id: Faker::Number.between(1, 25),
    close: Faker::Boolean.boolean
  )
end
60.times do
  Comment.create(
    content: Faker::Lorem.paragraphs(rand(1..3)).join('\n'),
    user_id: Faker::Number.between(1, 25),
    message_id: Faker::Number.between(1, 25)
  )
end
