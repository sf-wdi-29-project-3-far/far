require "./app/models/user"
require "faker"

20.times do
  u = User.new
  u.first_name = Faker::Name.first_name
  u.last_name = Faker::Name.last_name
  u.email = Faker::Internet.free_email
  u.password = "12345"
  u.save
end