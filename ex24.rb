puts "Lets practive everything"
puts "youd need to know about escapes that do \n newlines and \t tabs"

poem = <<MULTI_LINE_STRING

\tThe lovely world
with logic so firmly planeted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.

MULTI_LINE_STRING

puts "----------------"
puts poem
puts "----------------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(started)
	jelly_beans = started * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "with a starting point of #{start_point}"
puts "wed have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10

puts "we can also do that this way:"
puts "Wed have %s beans, %s jars, and %s crates." % secret_formula(start_point)