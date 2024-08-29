// Construa um programa que identifique se um número é primo.

import 'dart:io';

void main() {
  print("Digite um número: ");
  var numero = int.parse(stdin.readLineSync()!);

  var ehPrimo = true;
  for (var i = 2; i < numero; i++) {
    if (numero % i == 0) {
      ehPrimo = false;
      break;
    }
  }

  if (ehPrimo) {
    print("O número $numero é primo.");
  } else {
    print("O número $numero não é primo.");
  }
}
