require 'faker'

Flat.destroy_all

15.times do
  flat =  Flat.new(
    name: Faker::Address.city,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: rand(50..600),
    number_of_guests: rand(1..12),
    img: "https://source.unsplash.com/random/?apartment,#{Faker::Address.city_prefix}"
  )
  flat.save!
end
