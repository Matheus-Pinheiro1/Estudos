
p "bem vindos ao mercado do zé"

estoque = {
    1 => {nome: "arroz", valor: 10.00},
    2 => {nome: "feijão", valor: 7.99},
    3 => {nome: "macarrão", valor: 5.49},
    4 => {nome: "óleo", valor: 8.79},
    5 => {nome: "café", valor: 14.79}
}

total = 0.0
pedido = []

loop do
    p "Escolha um produto do estoque (0 para finalizar seu pedido): "
    estoque.each { |k,v|  p "{#{k}}  #{v[:nome] } R$ #{'%.2f' % v[:valor]} "  }  
    p "> "
     lista = gets.to_i
    break if lista == 0 

    if estoque.key?(lista)
        pedido << lista
        total += estoque[lista][:valor]
        p "#{estoque[lista][:nome]} adicionados. Total Parcial: R$ #{"%.2f" % total}"
    else
        p "Não existe essa opção"
    end
end

if pedido.empty?
    p "Seu carrinho está vazio."
else
    resumo = pedido.group_by(&:itself).map { |k,v| "#{v.size}x #{estoque[k][:nome]}" }.join(', ')
    p "Itens: #{resumo}"
    p "Subtotal: R$ #{'%.2f' % total}"
    p "Deseja adicionar 10% do atendente? [s/n] "
    adicional = gets.chomp
    total *= 1.10 if adicional == 's'
    p "Obrigado por comprar no mercado do zé, o valor da sua compra é de R$ #{'%.2f' % total}"
end