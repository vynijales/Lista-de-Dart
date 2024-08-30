// Construa e use uma função para calcular o fatorial de um número utilizando
// recursividade.

import 'dart:io';

int fatorial(int n) {
  if (n == 0) {
    return 1;
  }
  return n * fatorial(n - 1);
}

void main() {
  print("Digite um número: ");
  var numero = int.parse(stdin.readLineSync()!);

  var resultado = fatorial(numero);

  print("O fatorial de $numero é $resultado");
}
