puts "Calculadora de Pó para HS"
puts "--" * 20 

puts "Quantas cartas comuns você precisa ?"
common = gets.chomp.to_f

puts "Quantas cartas raras você precisa ?"
rare = gets.chomp.to_f

puts "Quantas cartas épicas você precisa ?"
epic = gets.chomp.to_f

puts "Quantas cartas lendárias você precisa ?"
legendary = gets.chomp.to_f

total_dust = (common * 5) + (rare * 20) + (epic * 100) + (legendary * 400)

puts "Quanto de pó você já tem ?"
current_dust = gets.chomp.to_f

n_dust = total_dust - current_dust 
if n_dust <= 0
    puts "Você já tem todo o pó necessário para criar as cartas."
else
    puts "Você precisa de mais #{n_dust} de pó para criar as cartas."
end