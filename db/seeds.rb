# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do |n|
    email = Faker::Internet.email
    password = "password"
    provider = "provider"
    User.create!(
    email: email,
    password: password,
    password_confirmation: password,
    provider: provider,
    uid: "#{n+1}"
    )
    Post.create!(
    title: "title#{n+1}",
    content: "content#{n+1}",
    image: "image#{n+1}.jpg",
    user_id: "#{n+1}"
    )
end
