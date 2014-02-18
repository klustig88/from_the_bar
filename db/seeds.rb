require "faker"


5.times do
  d = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.free_email, password: "test", password_confirmation: "test")
  d.save
end

5.times do
  r = Restaurant.create(name: Faker::Name.name, address: Faker::Address.street_address, city: Faker::Address.city, state: "IL", zip: Faker::Address.zip_code)
  r.save
end