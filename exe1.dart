//1.Crie uma função que ao passar um texto, ele faça um print da quantidade de palavras
void contarPalavras(String texto) {
  // Separar o texto em palavras usando espaço como delimitador
  List<String> palavras = texto.split(' ');

  // Filtrar palavras não vazias para evitar contar espaços duplos ou múltiplos
  List<String> palavrasNaoVazias = palavras.where((palavra) => palavra.isNotEmpty).toList();

  // Contar o número de palavras
  int quantidadeDePalavras = palavrasNaoVazias.length;

  // Printar a quantidade de palavras
  print("Quantidade de palavras: $quantidadeDePalavras");
}

void main() {
  String texto = "ola mundo tudo bem ";
  contarPalavras(texto);
}