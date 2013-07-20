def prompt
	print "> "
end

puts "you enter a dark room with two doors. do you go through door 1 or 2 or 3?"

prompt; door = gets.chomp

if door == "1"
	puts "theres a giant bear here eating cheese cake. what do do you do?"
	puts "1. take the cake."
	puts "2. scream at the bear"

	prompt; bear = gets.chomp

	if bear == "1"
		puts "the bear eats your face off, good job!"
	elsif bear == "2"
		puts "the bear eats your legs off!"
	else 
		puts "well, doing #{bear} is probably better. bear runs away"
	end

elsif door == "2"
	puts "you stare into the endless abys"
	puts "1 blueberries"
	puts "2 yellow jacket"
	puts "3 understanding revolvers"

	prompt; insanity = gets.chomp

	if insanity == "1" or insanity == "2"
		puts "your body survives powered by a mind of jello. good job!"
	else
		puts "the insanity rots your eyes good job"
	end

elsif door == "3"
	puts "good! you got away"

else 
	puts "you stumble around and fall ona  knife, death to u"
end
