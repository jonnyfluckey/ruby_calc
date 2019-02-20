

# take the first number


def first_number
puts "Type in your first number:"
@num1 = gets.to_f
puts "You're first number is #{@num1}"
end

# take modifier
def mod
puts "+, -, *, / or CE?"
@input = gets.upcase.to_s
@input2 = @input.chomp
if ["+", "-", "*", "/", "CE"].all? {|i| @input2 != i }
  puts "Please select a valid operator"
  mod
end
if @input2 == "CE"
  @ans = 0
end
end


# take the last number
def last_number
  puts "enter your last number:"
  @num2 = gets.to_f
  puts "Your last number is #{@num2}"
end

def next_number
  puts "enter your next number:"
  @nextnum = gets.to_f
  puts "Your next number is #{@nextnum}"
end
# puts result


def first_result
  if @input2 == "+"
  @ans = @num1 + @num2
  puts "The answer is #{@ans}"
elsif @input2 == "-"
  @ans = @num1 - @num2
  puts "The answer is #{@ans}"
elsif @input2 == "*"
  @ans = @num1 * @num2
  puts "The answer is #{@ans}"
elsif @input2 == "/"
  @ans = @num1 / @num2
  puts "The answer is #{@ans}"
else 
end
end

def continue
  mod
  if @ans != 0 
  next_number
  if @input2 == "+"
    @ans = @ans + @nextnum
    puts "The answer is #{@ans}"
  elsif @input2 == "-"
    @ans = @ans - @nextnum
    puts "The answer is #{@ans}"
  elsif @input2 == "*"
    @ans = @ans * @nextnum
    puts "The answer is #{@ans}"
  elsif @input2 == "/"
    @ans = @ans / @nextnum
    puts "The answer is #{@ans}"
  else 
  end
else
end
end

until @exit2 == 'N'
first_number
mod
last_number
first_result
while @ans != 0
continue
if @ans == 0
puts "Would you like to continue? Y/N"
  @exit = gets.upcase.to_s
  @exit2 = @exit.chomp
  if @exit2 == "N"
    puts "Goodbye"
  else
  end
  end
  end
end


# error checking
# user input and modifiers should be checked for proper input type
# the result should set first_number and allow for another modifier and last number so result continues to build until the user decides to clear the calculator
# - make + - * / work
# - make clear work