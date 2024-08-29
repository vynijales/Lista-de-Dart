// Construa um programa que leia do usuário um número inicial e um número final.
// Em seguida, exiba na tela uma sequencia apenas com os números ímpares dentro
// deste intervalo informado pelo usuário. Exemplo: caso o usuário entre com os
// números 4 e 10, o resultado seria: 5 7 9
// a) Construa este programa utilizando a estrutura while.
// b) Construa este programa utilizando a estrutura do-while.
// c) Construa este programa utilizando a estrutura for.

import 'dart:io';

void main() {
  print("Digite o número inicial: ");
  var numeroInicial = int.parse(stdin.readLineSync()!);

  print("Digite o número final: ");
  var numeroFinal = int.parse(stdin.readLineSync()!);

  print("Utilizando while:");
  var numeroAtual = numeroInicial;
  while (numeroAtual <= numeroFinal) {
    if (numeroAtual % 2 != 0) {
      stdout.write("$numeroAtual ");
    }
    numeroAtual++;
  }
  print("");

  print("Utilizando do-while:");
  numeroAtual = numeroInicial;
  do {
    if (numeroAtual % 2 != 0) {
      stdout.write("$numeroAtual ");
    }
    numeroAtual++;
  } while (numeroAtual <= numeroFinal);
  print("");

  print("Utilizando for:");
  for (var i = numeroInicial; i <= numeroFinal; i++) {
    if (i % 2 != 0) {
      stdout.write("$i ");
    }
  }
  print("");
}
