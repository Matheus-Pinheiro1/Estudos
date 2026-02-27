class Aluno
    attr_accessor :nome, :idade, :matricula

    def initialize(nome, idade, matricula)
      @nome = nome
      @idade = idade
      @matricula = matricula
    end

    def to_s
      "Nome: #{@nome}, Idade: #{@idade}, Matrícula: #{@matricula}"
    end



    matheus = Aluno.new("Matheus", 27, "2023001")
    puts matheus.to_s

end
