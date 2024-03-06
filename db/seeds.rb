Flat.destroy_all
50.times do
  Flat.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    description: Faker::Restaurant.description.split.first(20).join(' '),
    price_per_night: rand(50..150),
    number_of_guests: rand(1..8)
  )
end
