// Construa um programa que calcule o somatório dos números inteiros de um
// intervalo, definido por um número inicial e um  número final. Exemplo: caso
// as entradas fossem 4 e 9, o resultado seria: 39.

import 'dart:io';

void main() {
  print("Digite o número inicial: ");
  var numeroInicial = int.parse(stdin.readLineSync()!);

  print("Digite o número final: ");
  var numeroFinal = int.parse(stdin.readLineSync()!);

  var soma = 0;
  for (var i = numeroInicial; i <= numeroFinal; i++) {
    soma += i;
  }

  print("O somatório dos números de $numeroInicial a $numeroFinal é $soma");
}
