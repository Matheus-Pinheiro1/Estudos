puts "digite um numero: "
n = Integer(gets.chomp) rescue nil
puts n ? (n.even? ? "par" : "impar") : "entrada invalida"