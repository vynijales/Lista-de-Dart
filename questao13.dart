// Construa um programa que calcule o fatorial de um número. Use uma estrutura
// de repetição. Fatorial:  n! = n (n − 1)!
//Exemplo:  5! = 5 x 4 x 3 x 2 x 1 = 120    ou   5! = 1 x 2 x 3 x 4 x 5 = 120

import 'dart:io';

void main() {
  print("Digite um número: ");
  var numero = int.parse(stdin.readLineSync()!);

  var fatorial = 1;
  for (var i = 1; i <= numero; i++) {
    fatorial *= i;
  }

  print("O fatorial de $numero é $fatorial");
}
