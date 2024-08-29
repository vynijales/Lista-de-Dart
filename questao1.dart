// Calcular o IMC (índice de massa corporal) de uma pessoa. Produza um alerta em caso de divisão por zero.

import 'dart:io';

void main() {
  print("Digite o peso: ");
  var peso = double.parse(stdin.readLineSync()!);

  print("Digite a altura: ");
  var altura = double.parse(stdin.readLineSync()!);

  var imc = peso / (altura * altura);

  if (imc.isInfinite) {
    print("Erro: divisão por zero.");
  } else {
    print("IMC: $imc");
  }
}