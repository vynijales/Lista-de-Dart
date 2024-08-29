// Construa um programa que inverta a frase digitada pelo usuário. Por exemplo,
// se string1 for “bom dia”, então string2 será “aid  mob”.

import 'dart:io';

void main() {
  print("Digite uma frase: ");
  var frase = stdin.readLineSync()!;

  var fraseInvertida = frase.split('').reversed.join();
  print(fraseInvertida);
}
