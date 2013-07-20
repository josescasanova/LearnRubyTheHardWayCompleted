people = 30
cars = 40
buses = 15

if cars > people
	puts "we should take the cars"
elsif cars < people
	puts "we should not take the cars"
else 
	puts "we cant decide"
end

if buses > cars
	puts "tahts too many buses"
elsif buses < cars
	puts "maybe we could take the buses"
else
	puts "we still cant decide"
end

if people > buses
	puts "alright lets take the buses"
else
	puts "fine stay home"
end
		