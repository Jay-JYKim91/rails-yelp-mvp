puts "Clearing the Restaurant Database"
Restaurant.destroy_all

puts "Generating Restaurant"
10.times do
  temp_restaurant = Restaurant.create( name: Faker::Restaurant.name ,
                  address: Faker::Address.full_address,
                  phone_number: Faker::PhoneNumber.phone_number,
                  category: Restaurant::TYPES.sample)
  puts "Generated #{temp_restaurant.name}"
end

puts "Generated #{Restaurant.count} restaurant"
