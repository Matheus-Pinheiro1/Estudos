puts "Quantos ingressos você deseja comprar?"
ing = gets.chomp.to_i
lista = []
ing.times do |i|
  puts "Qual nome do dono do ingresso #{i+1}: "
  lista << gets.chomp
end
puts "Essas são as pessoas que possuem ingressos para hoje: #{lista.join(', ')}"