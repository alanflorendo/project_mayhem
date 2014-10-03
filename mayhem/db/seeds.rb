require 'faker'

5.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")
end

User.all.each do |user|
  10.times do
    user.hypos << Hypo.create(title: Faker::Lorem.sentence, sponsor_name: Faker::Name.name, sponsor_city: Faker::Address.city)
  end
end