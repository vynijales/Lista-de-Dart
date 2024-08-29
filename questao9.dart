// Construa um programa para exibir a tabuada de qualquer número “n” (1 a 9),
// sendo “n” um número fornecido pelo usuário. Utilize estrutura de repetição.

import 'dart:io';

void main() {
  print("Digite um número: ");
  var numero = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= 9; i++) {
    print("$numero x $i = ${numero * i}");
  }
}
