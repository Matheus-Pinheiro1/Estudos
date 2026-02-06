def multiply(a, b)
  a * b
end

def divide(a, b)
  return "Error: division by zero" if b == 0
  a / b
end

def subtract(a, b)
  a - b
end

def add(a, b)
  a + b
end

def mod(a, b)
  a % b
end

loop do
  puts "Calculator"
  puts "-" * 40
  print "Enter the first number (or 'q' to quit): "
  input = gets.chomp
  break if input.downcase == 'q'
  n1 = input.to_f

  print "Enter the second number: "
  n2 = gets.chomp.to_f

  puts "Choose the operation:"
  puts "'1' for multiplication"
  puts "'2' for division"
  puts "'3' for addition"
  puts "'4' for subtraction"
  puts "'5' for modulo"

  user_choice = gets.chomp.to_i

  result = case user_choice
           when 1
             multiply(n1, n2)
           when 2
             divide(n1, n2)
           when 3
             add(n1, n2)
           when 4
             subtract(n1, n2)
           when 5
             mod(n1, n2)
           else
             "Invalid option, please try again."
           end

  puts "You have chosen to #{user_choice == 1 ? 'multiply' : user_choice == 2 ? 'divide' : user_choice == 3 ? 'add' : user_choice == 4 ? 'subtract' : 'mod'} #{n1} and #{n2} and the result: #{result}"
  puts
end