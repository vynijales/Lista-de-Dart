// Construa um programa que calcule para o aluno sua média parcial e informe sua
// situação parcial (Aprovado, Recuperação ou  Reprovado). Caso ele esteja em
// Recuperação, calcule quanto ele precisa tirar na 4ª prova para ser aprovado
// (média final maior ou  igual que 5,0). Observação: utilize os pesos e regras
// da UFERSA.

import 'dart:io';

void main() {
  print("Digite a nota da 1ª prova: ");
  var nota1 = double.parse(stdin.readLineSync()!);

  print("Digite a nota da 2ª prova: ");
  var nota2 = double.parse(stdin.readLineSync()!);

  print("Digite a nota da 3ª prova: ");
  var nota3 = double.parse(stdin.readLineSync()!);

  print("Digite a nota da 4ª prova: ");
  var nota4 = double.parse(stdin.readLineSync()!);

  var media = (nota1 * 0.2) + (nota2 * 0.2) + (nota3 * 0.3) + (nota4 * 0.3);

  if (media >= 7.0) {
    print("Aprovado");
  } else if (media >= 5.0) {
    print("Recuperação");
    var notaRecuperacao =
        (5.0 - (nota1 * 0.2) - (nota2 * 0.2) - (nota3 * 0.3)) / 0.3;
    print("Nota necessária na 4ª prova: $notaRecuperacao");
  } else {
    print("Reprovado");
  }
}
