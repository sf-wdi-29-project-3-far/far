require "./app/models/user"
require "faker"

User.destroy_all

5.times do
  u = User.new
  u.first_name = Faker::Name.first_name
  u.last_name = Faker::Name.last_name
  u.email = Faker::Internet.free_email
  u.password = "12345"
  u.languages = ["English", "Spanish", "French"]
  u.origin_country = "Mexico"
  u.age = 23
  u.male = true
  u.interests = ["dancing"]
  u.image = "https://ucarecdn.com/66933ee1-2030-409c-bfa1-46c263681d05/"
  u.save
end

5.times do
  u = User.new
  u.first_name = Faker::Name.first_name
  u.last_name = Faker::Name.last_name
  u.email = Faker::Internet.free_email
  u.password = "12345"
  u.languages = ["English", "Korean", "Italian"]
  u.origin_country = "Korea"
  u.age = 24
  u.female = true
  u.interests = ["dancing", "football", "jazz", "mexican"]
  u.image = "https://ucarecdn.com/66933ee1-2030-409c-bfa1-46c263681d05/"
  u.save
end

5.times do
  u = User.new
  u.first_name = Faker::Name.first_name
  u.last_name = Faker::Name.last_name
  u.email = Faker::Internet.free_email
  u.password = "12345"
  u.languages = ["English"]
  u.origin_country = "Spain"
  u.age = 34
  u.other_gender = true
  u.interests = ["painting", "basketball", "jazz", "italian"]
  u.image = "https://ucarecdn.com/66933ee1-2030-409c-bfa1-46c263681d05/"
  u.save
end

5.times do
  u = User.new
  u.first_name = Faker::Name.first_name
  u.last_name = Faker::Name.last_name
  u.email = Faker::Internet.free_email
  u.password = "12345"
  u.languages = ["Spanish"]
  u.origin_country = "Argentina"
  u.age = 52
  u.female = true
  u.interests = ["singing", "football", "pop", "painting", "jazz", "spanish", "korean"]
  u.image = "https://ucarecdn.com/66933ee1-2030-409c-bfa1-46c263681d05/"
  u.save
end

2.times do
  u = User.new
  u.first_name = Faker::Name.first_name
  u.last_name = Faker::Name.last_name
  u.email = Faker::Internet.free_email
  u.password = "12345"
  u.languages = ["Spanish"]
  u.origin_country = "Mexico"
  u.age = 52
  u.female = true
  u.interests = ["singing", "football", "pop", "painting", "jazz", "spanish", "korean"]
  u.image = "https://ucarecdn.com/66933ee1-2030-409c-bfa1-46c263681d05/"
  u.save
end