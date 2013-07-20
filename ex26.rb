puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."

poem = <<POEM
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explantion
\n\t\twhere there is none.
POEM


puts "--------------"
puts poem
puts "--------------"

five = 10 - 2 + 3 - 6
puts "This should be five: %s" % five

def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have %s beans, %s jars, and %s crates." % [beans, jars, crates]

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %s beans, %s jars, and %s crates." % secret_formula(start_point)

module Ex25
    def self.break_words(stuff)
        #this function will break up works for us
        words = stuff.split(' ')
        words
    end

    def self.sort_words(words)
        #sort the words)
        words.sort()
    end

    def self.print_first_word(words)
        #prints the first word and shifts the others down by one
        word = words.shift()
        puts word
    end

    def self.print_last_word(words)
        #prints the last word after popping it off the end
        word = words.pop()
        puts word
    end

    def self.sort_sentence(sentence)
        #takes ina  full sentence and returns the sorted words
        words = break_words(sentence)
        sort_words(words)
    end

    def self.print_first_and_last(sentence)
        #prints the first and lat words of the sentence
        words = break_words(sentence)
        print_first_word(words)
        print_last_word(words)
    end

    def self.print_first_and_last_sorted(sentence)
        # sorts the words then prints the first and last one
        words = sort_sentence(sentence)
        print_first_word(words)
        print_last_word(words)
    end
end

sentence = "All good things come to those who wait."

words = Ex25.break_words(sentence)
sorted_words = Ex25.sort_words(words)

Ex25.print_first_word(words)
Ex25.print_last_word(words)
Ex25.print_first_word(sorted_words)
Ex25.print_last_word(sorted_words)
sorted_words = Ex25.sort_sentence(sentence)
print sorted_words

Ex25.print_first_and_last(sentence)

Ex25.print_first_and_last_sorted(sentence)
