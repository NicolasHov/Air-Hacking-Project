# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.destroy_all
Flight.destroy_all

# Create Airoports
airport_code_tab = ["ATL","BJS", "DXB", "LAX", "HND", "ORD", "LHR", "HKG", "PVG", "CDG", "DFW", "AMS", "FRA", "IST"]

airport_code_tab.each do |airport_code_elem|
  airport = Airport.create(airport_code: airport_code_elem)
end

# Create Flights
all_airports = Airport.all
index = all_airports.length - 1

13.times do
  departure_airport = all_airports[rand(0..index)].id
  destination_airport = all_airports[rand(1..index)].id
  next if departure_airport == destination_airport
	  Flight.create(departure_date: rand(7.days).seconds.from_now,
	  							duration: rand(500),
	                departure_airport_id: departure_airport,
	                arrival_airport_id: destination_airport)
end
