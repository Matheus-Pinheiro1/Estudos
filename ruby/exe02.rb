puts "Digite um numero:"
numero = gets.chomp.to_i
puts numero.even? ? "o número #{numero} é par" : "o número #{numero} é impar"