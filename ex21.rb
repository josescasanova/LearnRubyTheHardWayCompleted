def add(a, b)
	puts "ADDING #{a} + #{b}"
	a + b
end


def subtract(a, b)
	puts "subtracting #{a} - #{b}"
	a - b
end

def multiply(a, b)
	puts "multipling #{a} * #{b}"
	a * b
end

def divide(a, b)
	puts "Dividing #{a} / #{b}"
	a / b
end

puts "lets do some math with just functions"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "age: #{age}, height: #{height}, weight: #{weight}, IQ: #{iq}"

#a puzzle for extra credit
puts "here is a puzzle"

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "that becomes: #{what} can u do it by hand?"