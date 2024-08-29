// Construa um programa que conte a quantidade de vezes que as palavras de uma
// frase aparecem. Exemplo: “estude muito sempre sempre estude”.
// Resultado: estude=2 muito=1 sempre=2

import 'dart:io';

void main() {
  print("Digite uma frase: ");
  var frase = stdin.readLineSync()!;

  var palavras = <String, int>{};
  for (var palavra in frase.split(' ')) {
    if (palavras.containsKey(palavra)) {
      palavras[palavra] = palavras[palavra]! + 1;
    } else {
      palavras[palavra] = 1;
    }
  }

  palavras.forEach((palavra, quantidade) {
    print("$palavra=$quantidade");
  });
}
