// Construa um programa que calcule uma equação do 2º grau.  Crie uma função com
// retorno para calcular o delta.  Crie uma função sem retorno para calcular as
// raízes.

import 'dart:io';
import 'dart:math';

double calcularDelta(double a, double b, double c) {
  return pow(b, 2) - 4 * a * c;
}

void calcularRaizes(double a, double b, double c) {
  var delta = calcularDelta(a, b, c);

  if (delta < 0) {
    print("Não existem raízes reais.");
  } else if (delta == 0) {
    var raiz = -b / (2 * a);
    print("Raiz: $raiz");
  } else {
    var raiz1 = (-b + sqrt(delta)) / (2 * a);
    var raiz2 = (-b - sqrt(delta)) / (2 * a);
    print("Raízes: $raiz1 e $raiz2");
  }
}

void main() {
  print("Digite o valor de a: ");
  var a = double.parse(stdin.readLineSync()!);

  print("Digite o valor de b: ");
  var b = double.parse(stdin.readLineSync()!);

  print("Digite o valor de c: ");
  var c = double.parse(stdin.readLineSync()!);

  calcularRaizes(a, b, c);
}
