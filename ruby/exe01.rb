
puts "Digite seu nome:"
nome = gets.chomp.strip

puts "Digite seu sobrenome:"
sobrenome = gets.chomp.strip


puts "Bem Vindo(a) #{nome} #{sobrenome} ao sistema!"
puts "Seu nome invertido é : #{nome.reverse} #{sobrenome.reverse}"
puts "Seu nome tem #{nome.length + sobrenome.length} letras ao todo."