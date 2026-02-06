puts "bem vindos ao BK"

items = {
  1 => {name: 'hambúrguer', price: 20.0},
  2 => {name: 'batata frita', price: 10.0},
  3 => {name: 'refrigerante', price: 7.0},
  4 => {name: 'sobremesa', price: 14.0},
  5 => {name: 'maionese', price: 12.0}
}

total = 0.0
pedido = []

loop do
  puts "\nEscolha um item (0 para finalizar):"
  items.each { |k,v| puts "{#{k}} #{v[:name]} R$ #{'%.2f' % v[:price]}" }
  print "> "
  escolhas = gets.to_i
  break if escolhas == 0

  if items.key?(escolhas)
    pedido << escolhas
    total += items[escolhas][:price]
    puts "#{items[escolhas][:name]} adicionado. Total parcial: R$ #{'%.2f' % total}"
  else
    puts "Opção inválida."
  end
end

if pedido.empty?
  puts "Nenhum item selecionado."
else
  resumo = pedido.group_by(&:itself).map { |k,v| "#{v.size}x #{items[k][:name]}" }.join(', ')
  puts "\nItens: #{resumo}"
  puts "Subtotal: R$ #{'%.2f' % total}"
  puts "Deseja adicionar 10% do atendente? [s/n] "
  adicional = gets.chomp.downcase
  total *= 1.10 if adicional == 's'
  puts "Obrigado por lanchar no BK, o valor da sua compra é de R$ #{'%.2f' % total}"
end