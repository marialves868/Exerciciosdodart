//4.Utizando for in, faça uma função que retorne true caso a lista só tenha 
//números positivos e false caso só tenha negativos
//Agora faça outra função que usando for, faça a contagem e print quantos números pares e quantos ímpares a lista tem

bool verificarPositivos(List<int> lista) {
  for (var numero in lista) {
    if (numero < 0) {
      return false;
    }
  }
  return true;
}

void contarParesImpares(List<int> lista) {
  int contagemPares = 0;
  int contagemImpares = 0;

  for (int i = 0; i < lista.length; i++) {
    if (lista[i].isEven) {
      contagemPares++;
    } else {
      contagemImpares++;
    }
  }

  print("Quantidade de números pares: $contagemPares");
  print("Quantidade de números ímpares: $contagemImpares");
}

void main() {
  List<int> numerosPositivos = [1, 2, 3, 4, 5];
  List<int> numerosNegativos = [-1, -2, -3, -4, -5];
  List<int> numerosMisturados = [1, 2, -3, 4, -5];

  print(verificarPositivos(numerosPositivos)); // Deve retornar true
  print(verificarPositivos(numerosNegativos)); // Deve retornar false
  print(verificarPositivos(numerosMisturados)); // Deve retornar false

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  contarParesImpares(numeros);
}