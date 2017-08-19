
require 'pry'
require 'colorize'

@first_num = ""
@operator = ""
@second_num = ""
@result = ""

puts " "
puts "Welcome to the ruby calculator!".colorize(:cyan)

def first_number
	puts "What is the first number of your equation?".colorize(:cyan)
	puts "Note: Any letter or symbol entered will become 0.".colorize(:cyan)
	@first_num = gets.to_i
	# unless 
	# else puts "Please enter a valid number."
	# end	
	operator_input
end

def operator_input
	puts "Select an operator: +, -, *, /".colorize(:cyan)
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
		else puts "Please select a valid operator.".colorize(:red)
			operator_input
	end
	second_number
end

def second_number
	puts "What is the second number?".colorize(:cyan)
	@second_num = gets.to_i
	result
end

def result
	puts ""
	puts "Calculating...".colorize(:cyan)
	puts ""
	case @operator
		when  "+"
			@result = @first_num + @second_num
		when "-"
			@result = @first_num - @second_num
		when "*"
			@result = @first_num * @second_num
		when "/"
			@result = @first_num / @second_num
	end
	puts "The result of #{@first_num} #{@operator} #{@second_num} is #{@result}".colorize(:cyan)
	@first_num = ""
	@operator = ""
	@second_num = ""
	menu
end

def menu
	puts "What would you like to do now?".colorize(:cyan)
	puts "Enter 1 to calculate another equation.".colorize(:cyan)
	puts "Enter 2 to calculate upon the previous equation.".colorize(:cyan)
	puts "Enter 3 to exit.".colorize(:cyan)
	choice = gets.to_i

	case choice
		when 1
			first_number
			@result = ""
		when 2
			@first_num = @result
			puts "#{@result} is now the first number in your equation.".colorize(:cyan)
			operator_input
		when 3
			exit
		else
			puts " "
			puts "Please enter a valid input.".colorize(:red)
			puts " "
			menu
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