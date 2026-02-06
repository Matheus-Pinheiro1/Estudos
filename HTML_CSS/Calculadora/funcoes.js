let operacao = "";
let valor1 = 0;
const input = document.getElementById("calc1");

function atualizarOperacao(operador) {
  operacao = op;
  valor1 = parseInt(input.value);
  input.value = "0";
}

function resolver() {
  let valor2 = parseInt(input.value);
  let resultado = 0;

  switch (operacao) {
    case "+":
      resultado = valor1 + valor2;
      break;
    case "-":
      resultado = valor1 - valor2;
      break;
    case "*":
      resultado = valor1 * valor2;
      break;
    case "/":
      resultado = valor1 / valor2;
      break;
  }
  input.value = resultado;
}

function limpar() {
  operacao = "";
  valor1 = 0;
  input.value = "0";
}

function atualizarDisplay(valor) {
  if (input.value === "0") {
    input.value = valor;
  } else {
    input.value = input.value + valor;
  }
}
