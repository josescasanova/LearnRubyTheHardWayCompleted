ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait theres not 10 things in that list, lets fix that"

stuff = ten_things.split(' ')
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

while stuff.length != 10
	next_one = more_stuff.pop()
	puts "adding: #{next_one}"
	stuff.push(next_one)
	puts "Theres #{stuff.length} items now"
end

puts "There we go: #{stuff}"

puts "lets do some things with stuff"

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff.values_at(3,5).join('#')