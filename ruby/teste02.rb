puts "Digite um mês"
mes = gets.chomp

case mes
when "janeiro", "março", "maio", "julho", "agosto", "outubro", "dezembro"
    puts "esse mês tem 31 dias"
when "abril", "junho", "setembro", "novembro"
    puts "esse mês tem 30 dias"
when "fevereiro"
    puts "esse mês tem 28 ou 29 dias"
else
    puts "não existe esse mês"
end