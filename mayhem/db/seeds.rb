require 'faker'

5.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")
end

User.all.each do |user|
  10.times do
    precips = [0,0,0,0,0,0,0,1,2,3,5,12,0,0]
    tornado = rand(10)==5
    hurricane = rand(10)==5
    flood = rand(10)==5

    user.hypos << Hypo.create(title: Faker::Lorem.sentence,
                              sponsor_name: Faker::Name.name,
                              sponsor_city: Faker::Address.city,
                              sponsor_state: Faker::Address.state,
                              law_name: Faker::Company.catch_phrase,
                              precip_amount: precips[rand(precips.length-1)],
                              is_tornado: tornado,
                              is_hurricane: hurricane,
                              is_flood: flood)
  end
end
