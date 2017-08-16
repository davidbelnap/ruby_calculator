
require 'pry'

@calc []

puts "Welcome to the ruby calculator!"

def first_number
	puts "What is the first number?"
	@calc << gets.to_i
end

def operator
	puts "Select an operator: +, -, *, /"
	choice = gets.strip
	case choice
		when "+"
		
		when "-"

		when "*"

		when "/"

		else puts "Please select a valid operator."
	end
end

def second_number
	puts "What is the second number?"
end

def result
	puts "Calculating..."

	puts "The result of ___ ___ ___ is ___."
end



# arr = [ +, -, *, / ]
# arr.include?'+'
# => true
# arr.include?'a'
# =>false

# a=gets
# a=get.to_i

# what if user enter: 'abc'
#a=gets.to_i
#what is a?