3.times do
  Restaurant.create(
    name: "#{Faker::Company.name}",
    address: "#{Faker::Address.street_address}",
    description: "#{Faker::Company.catch_phrase}",
    image: "#{Faker::Company.logo}"
  )
end

Restaurant.all.each do |restaurant|
  3.times do
    Comment.create(
      restaurant: restaurant,
      name: "#{Faker::Name.name}",
      image: "#{Faker::Avatar.image}",
      content: "#{Faker::Hipster.sentence}"
    )
  end
end
