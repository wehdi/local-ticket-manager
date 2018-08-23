# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  User.create(
    username: Faker::StarWars.planet,
    email: Faker::Internet.free_email,
    password: Faker::Internet.password(6, 20)
  )
end
60.times do
  Message.create(
    title: Faker::Pokemon.move,
    description: Faker::Lorem.paragraphs(rand(15..80)).join('\n'),
    user_id: Faker::Number.number(1)
  )
end
60.times do
  Comment.create(
    content: Faker::Lorem.paragraphs(rand(10..40)).join('\n'),
    user_id: Faker::Number.number(1),
    message_id: Faker::Number.number(2)
  )
end
