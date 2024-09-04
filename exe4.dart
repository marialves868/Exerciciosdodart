// 1. Crie uma função somarNumeros, que receba dois números do tipo Int,
// e print o resultado da soma deles.
void somarNumeros(int a, int b) {
  int resultado = a + b;
  print("Resultado da soma: $resultado");
}

// 2.crie um enum “OperacaoEnum” que contenha os valores: soma, subtracao, divisao, multiplicacao
enum OperacaoEnum { soma, subtracao, divisao, multiplicacao }

// 3. Agora adicione o enum como um parâmetro a mais da função somarNumeros
void executarOperacao(int a, int b, OperacaoEnum operacao)
 {
 //4. Agora utilizando if else, faça com que dependendo o valor do enum que for passado, a função execute a operação condinzente
  if (operacao == OperacaoEnum.soma) {
    int resultado = a + b;
    print("Resultado da soma: $resultado");
  } else if (operacao == OperacaoEnum.subtracao) {
    int resultado = a - b;
    print("Resultado da subtração: $resultado");
  } else if (operacao == OperacaoEnum.divisao) {
    if (b != 0) {
      double resultado = a / b;
      print("Resultado da divisão: $resultado");
    } else {
      print("Erro: Divisão por zero não é permitida.");
    }
  } else if (operacao == OperacaoEnum.multiplicacao) {
    int resultado = a * b;
    print("Resultado da multiplicação: $resultado");
  } else {
    print("Operação inválida.");
  }
}