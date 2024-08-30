// Calcule o somatório dos números inteiros do intervalo entre dois números.
// Resolva o problema com função recursiva.

import 'dart:io';

int somatorio(int inicio, int fim) {
  if (inicio == fim) {
    return inicio;
  }
  return inicio + somatorio(inicio + 1, fim);
}

void main() {
  print("Digite o número inicial: ");
  var numeroInicial = int.parse(stdin.readLineSync()!);

  print("Digite o número final: ");
  var numeroFinal = int.parse(stdin.readLineSync()!);

  var resultado = somatorio(numeroInicial, numeroFinal);

  print(
      "O somatório dos números entre $numeroInicial e $numeroFinal é $resultado");
}
