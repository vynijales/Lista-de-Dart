// Construa um programa para ler do teclado as dimensões de uma matriz de
// inteiros e seus elementos. Em seguida, exiba seus  elementos.

import 'dart:io';

void main() {
  print("Digite o número de linhas da matriz: ");
  var linhas = int.parse(stdin.readLineSync()!);

  print("Digite o número de colunas da matriz: ");
  var colunas = int.parse(stdin.readLineSync()!);

  var matriz = List.generate(linhas, (i) => List.filled(colunas, 0));

  for (var i = 0; i < linhas; i++) {
    for (var j = 0; j < colunas; j++) {
      print("Digite o elemento da linha $i e coluna $j: ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print("Matriz:");
  for (var i = 0; i < linhas; i++) {
    for (var j = 0; j < colunas; j++) {
      stdout.write("${matriz[i][j]} ");
    }
    print("");
  }
}
