cars = 100
space_in_a_car = 4
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

# shows how many cars
puts "There are #{cars} cars available."
#shows how many drivers available
puts "There are only #{drivers} drivers available."
#shows how many empty cars
puts "There will be #{cars_not_driven} empty cars today."
#shows how many people they can transport
puts "We can transport #{carpool_capacity} people today."
#show how many passengers need to be carpooled today
puts "We have #{passengers} passengers to carpool today."
#hows how many passengers they can put into each driven car
puts "We need to put about #{average_passengers_per_car} in each cars."