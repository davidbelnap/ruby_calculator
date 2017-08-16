
require 'pry'

@calc = []
@operator = ""

puts "Welcome to the ruby calculator!"

def first_number
	puts "What is the first number of your equation?"
	puts "Note: Any letter or symbol entered will become 0."
	@calc << gets.to_i
	# unless 
	# else puts "Please enter a valid number."
	# end	
	operator_input
end

def operator_input
	puts "Select an operator: +, -, *, /"
	oper = gets.strip
	case oper
		when "+"
			@operator = oper
		when "-"
			@operator = oper
		when "*"
			@operator = oper
		when "/"
			@operator = oper
		else puts "Please select a valid operator."
			operator_input
	end
	second_number
end

def second_number
	puts "What is the second number?"
	@calc << gets.to_i
	result
end

def result
	puts "Calculating..."
	case @operator
		when  "+"
			result = @calc[0] + @calc[1]
		when "-"
			result = @calc[0] - @calc[1]
		when "*"
			result = @calc[0] * @calc[1]
		when "/"
			result = @calc[0] / @calc[1]
	end
	puts "The result of #{@calc[0]} #{@operator} #{@calc[1]} is #{result}"
	@calc = []
	@operator = ""
	menu
end

def menu
	puts "What would you like to do now?"
	puts "Enter 1 to calculate another equation."
	puts "Enter 2 to exit."
	choice = gets.to_i

	case choice
		when 1
		first_number
		when 2
		exit
		else
		puts "Please enter a valid input."
	end
end

first_number


# arr = [ +, -, *, / ]
# arr.include?'+'
# => true
# arr.include?'a'
# =>false

# a=gets
# a=get.to_i

# what if user enter: 'abc'
# a=gets.to_i
# what is a?