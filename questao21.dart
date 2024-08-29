// Construa um programa que conte a quantidade de letras de uma palavra.
// Exemplo: “casa”. Resultado: c=1  a =2  s =1

import 'dart:io';

void main() {
  print("Digite uma palavra: ");
  var palavra = stdin.readLineSync()!;

  var letras = <String, int>{};
  for (var letra in palavra.split('')) {
    if (letras.containsKey(letra)) {
      letras[letra] = letras[letra]! + 1;
    } else {
      letras[letra] = 1;
    }
  }

  letras.forEach((letra, quantidade) {
    print("$letra = $quantidade");
  });
}
