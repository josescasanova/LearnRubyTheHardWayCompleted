#create a mapping of state abbreviation
states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI',
}

#create a basic set of states and some cities in them
cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

#add more citites
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#puts out some cities
puts '-' * 10
puts "NY State has: ", cities['NY']
puts "OR State has: ", cities['OR']

#put some states
puts '-' * 10
puts "Michigan's abbreviation is: ", states['Michigan']
puts "Florida's abbreviation is: ", states['Florida']

#do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: ", cities[states['Michigan']]
puts "Florida has: ", cities[states['Florida']]

#puts every state abbreviation
puts '-' * 10
for state, abbrev in states
	puts "%s is abbreviated %s" % [state, abbrev]
end

#puts every city in state
puts '-' * 10
for abbrev, city in cities
	puts "%s has the city %s" % [abbrev, city]
end

#now do both at the same damn time
puts '-' * 10
for state, abbrev in states
	puts "%s state in abbreviated %s and has city %s" % [state, abbrev, cities[abbrev]]
end

puts '-' * 10
#if its not there you get nil
state = states['Texas']

if not state
	puts "Sorry, no Texas."
end

#get a city with a default value
city = cities['TX'] || 'Does Not Exist'
puts "The city for the state 'TX' is: %s" % city


