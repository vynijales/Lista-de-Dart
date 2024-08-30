// Construa um programa que receba duas strings, s1 e s2, e retorne true se s2
// for um anagrama de s1. Exemplos de anagrama: PATO, PATO, TOPA e OPTA.

import 'dart:io';

void main() {
  print("Digite a primeira palavra: ");
  var s1 = stdin.readLineSync()!.toUpperCase();
  print("Digite a segunda palavra: ");
  var s2 = stdin.readLineSync()!.toUpperCase();

  var anagrama = true;
  if (s1.length != s2.length) {
    anagrama = false;
  } else {
    var s1Ordenado = s1.split('').toList()..sort();
    var s2Ordenado = s2.split('').toList()..sort();
    for (var i = 0; i < s1Ordenado.length; i++) {
      if (s1Ordenado[i] != s2Ordenado[i]) {
        anagrama = false;
        break;
      }
    }
  }

  if (anagrama) {
    print("As palavras são anagramas.");
  } else {
    print("As palavras não são anagramas.");
  }
}
