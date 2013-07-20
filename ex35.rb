def prompt()
	print "> "
end

def gold_room()
	puts "This room is full of gold. How much do you take?"

	prompt; next_move = gets.chomp
	if next_move.include? "0" or next_move.include? "1"
		how_much = next_move.to_i()
	else
		dead("man, learn to type a number")
	end

	if how_much < 50
		puts "Nice, youre not greedy, you win"
		Process.exit(0)
	else
		dead("You greedy bastard!")
	end
end

def bear_room()
	puts "There is a bear here."
	puts "The bear has a bunch of honey."
	puts "The fat bear is in front of another door."
	puts "How are you going to move the bear?"
	bear_moved = false

	while true
		prompt; next_move = gets.chomp

		if next_move == "take honey"
			dead("The bear looks at you then slaps your face off.")
		elsif next_move == "taunt bear" and not bear_moved
			puts "the bear has moved from the door. you can go through it now."
			bear_moved = true
		elsif next_move == "taunt bear" and bear_moved
			dead("the bear gets pissed off and chews your leg off")
		elsif next_move == "open door" and bear_moved
			gold_room()
		else
			puts "i got no idea what that means"
		end
	end
end

def cthulhu_room()
	puts "Here you see the great evil Cthulhu"
	puts "he what stares"
	puts "do you flee or eat"

	prompt; next_move = gets.chomp

	if next_move.include? "flee"
		start()
	elsif next_move.include? "eat"
		dead("Well that was tasty!")
	else
		cthulhu_room()
	end
end

def dead(why)
	puts "#{why} Good job!"
	Process.exit(0)
end

def start()
	puts "you are ina  dark room"
	puts "there is a door to ur right and left"
	puts "which one?"

	prompt; next_move = gets.chomp

	if next_move == "left"
		bear_room()
	elsif next_move == "right"
		cthulhu_room()
	else
		dead("You stumble around the room until you starve")
	end
end
start()