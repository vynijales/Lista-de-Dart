// Construa um programa que identifique o maior e o menor número de um vetor de
// inteiros.

import 'dart:io';

void main() {
  print("Digite os números separados por espaço: ");
  var numeros =
      stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();

  var maior = numeros[0];
  var menor = numeros[0];
  for (var numero in numeros) {
    if (numero > maior) {
      maior = numero;
    }
    if (numero < menor) {
      menor = numero;
    }
  }

  print("O maior número é $maior e o menor número é $menor");
}
