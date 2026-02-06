const input = document.getElementById("calc1");
let operacao = "";
let numero1 = "";
let operacaoAtiva = false;

function atualizaOperacao(op) {
  if (op === "%") {
    let valor = parseFloat(input.value);
    input.value = (valor / 100).toString();
    return;
  }

  if (input.value === "" && op !== "-") {
    return;
  }

  if (operacaoAtiva && operacao) {
    resolver();
  }

  numero1 = input.value;
  operacao = op;
  input.value = "";
  operacaoAtiva = true;
}

function resolver() {
  if (numero1 === "" || operacao === "" || input.value === "") {
    return;
  }

  let numero2 = parseFloat(input.value);
  let numeroFinal = 0;

  switch (operacao) {
    case "+":
      numeroFinal = parseFloat(numero1) + numero2;
      break;
    case "-":
      numeroFinal = parseFloat(numero1) - numero2;
      break;
    case "*":
      numeroFinal = parseFloat(numero1) * numero2;
      break;
    case "/":
      if (numero2 === 0) {
        input.value = "Erro";
        numero1 = "";
        operacao = "";
        operacaoAtiva = false;
        return;
      }
      numeroFinal = parseFloat(numero1) / numero2;
      break;
  }

  if (!Number.isInteger(numeroFinal)) {
    numeroFinal = parseFloat(numeroFinal.toFixed(8));
  }

  input.value = numeroFinal.toString();
  numero1 = numeroFinal.toString();
  operacao = "";
  operacaoAtiva = false;
}

function atualizarDisplay(valor) {
  if (input.value === "0") {
    input.value = valor.toString();
  } else {
    input.value = input.value + valor.toString();
  }
}

function limparDisplay() {
  input.value = "0";
  numero1 = "";
  operacao = "";
  operacaoAtiva = false;
}

function deletarUltimo() {
  let valor = input.value;
  if (valor.length > 1) {
    input.value = valor.substring(0, valor.length - 1);
  } else {
    input.value = "0";
  }
}
