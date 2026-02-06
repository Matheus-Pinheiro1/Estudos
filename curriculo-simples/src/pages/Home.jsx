export default function Home() {
  return (
    <div className="container">
      <div className="card">
        <h1 className="titulo">Matheus Pinheiro</h1>
        <p>Desenvolvedor de Software</p>
        <p>Email: matheushenriquepls2@hotmail.com | Telefone: (61) 98185-7470</p>
      </div>

      <div className="card">
        <h2>Resumo</h2>
        <p>
          Estou estudando as linguagens: Ruby, HTML, CSS e JavaScript, com planos de estudar também React, Node e Dart. 
          Tenho experiência em projetos simples e na parte de manutenção de hardware.
        </p>
      </div>

      <div className="card">
        <h2>Experiência</h2>

        <p><b>Fasa - Auto-peças</b> (2024 - 2025)</p>
        <ul className="lista">
          <li>Trabalhava principalmente com manutenção de equipamentos, suporte técnico, atendimento ao cliente e processos de garantia</li>
        </ul>
      
        <p><b>Freelas / Projetos</b> (2022 - 2024)</p>
        <ul className="lista">
          <li>Fiz páginas simples em HTML e CSS.</li>
          <li>Fiz banners, folders e outros elementos de marketing para microempresas.</li>
        </ul>
        
        <p><b>CIR - Hospital Odontológico de BSB</b> - Cargo (2019 - 2020)</p>
        <ul className="lista">
          <li>Estágio em Design.</li>
          <li>Responsavel por diagramar telas e atendimento ao cliente.</li>
          <li>Ajudei na criação de peças de Design como folder, cartões e banners.</li>
        </ul>
      </div>


      <div className="card">
        <h2>Projetos</h2>

        <p><b>Projeto 1:</b> Currículo</p>
        <p>Curriculo simples feito em React e CSS.</p>

        <p><b>Projeto 2:</b> Calculadora Estilizada</p>
        <p>Calculadora simples feita em React e CSS.</p>

        
        <p><b>Projeto 3:</b> Chat</p>
        <p>Projeto sendo feito, de um chat onde o usuario pode se cadastrar e conversar com outros usuarios.</p>
      </div>

      <div className="card">
        <h2>Habilidades</h2>
        <p>HTML, CSS, JavaScript, React (básico), Git, Ruby on Rails e Noções de Design Grafico</p>
      </div>

      <div className="card">
        <h2>Formação</h2>
        <p>Análise e Desenvolvimento de Sistemas - UDF (2023 - )</p>
        <p>Curso de RUBY - Udemy</p>
      </div>
    </div>
  );
}
