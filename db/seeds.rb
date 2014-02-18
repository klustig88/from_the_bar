require "faker"


5.times do
d = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.free_email, password: "test", password_confirmation: "test")
d.save
end