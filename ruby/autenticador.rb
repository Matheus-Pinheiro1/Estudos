    credenciais = [
        {user: "admin", pass: "senha"},
        {user: "user1", pass: "senha1"},
        {user: "user2", pass: "senha2"},
        {user: "user3", pass: "senha3"},
        {user: "user4", pass: "senha4"},
        {user: "user5", pass: "senha5"}
    ]
        def auth_user(user, pass, credenciais)
            credenciais.each do |credencial|
                if credencial[:user] == user && credencial[:pass] == pass
                  puts "Acesso Permitido. Bem-vindo, #{user}!"
                  return true
                end
            end
            puts "Acesso Negado. Usuário ou senha incorretos."
            return false
        end



         puts "Bem vindo ao sistema de autenticação"
    25.times { print "-" }


    input = ""
    tentativas = 0
    while input != "n"
        tentativas += 1
        if tentativas > 3
            puts "Número máximo de tentativas excedido. Acesso bloqueado."
            break;
        end

   
    puts "\nDigite seu nome de usuário:"
    usuario_input = gets.chomp
    puts "Digite sua senha:"
    senha_input = gets.chomp
    if auth_user(usuario_input, senha_input, credenciais)
      break
    end

puts "Apertar 'n' para sair ou qualquer outra tecla para tentar novamente:"
input = gets.chomp.downcase
end        
         
  