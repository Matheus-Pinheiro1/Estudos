puts "Calculator"
print "--" * 10 + "\n"
puts "Enter the first number: "
n1 = gets.chomp.to_f
puts "Enter the second number: "
n2 = gets.chomp.to_f

puts "The first number added to the second number is: #{n1 + n2}"
puts "The first number subtracted by the second number is: #{n1 - n2}"
puts "The first number multiplied by the second number is: #{n1 * n2}"
puts "The first number divided by the second number is: #{n1 / n2}"
puts "The first number mod the second number is: #{n1 % n2}"
puts "--" * 10
puts "Thank you for using the calculator!"