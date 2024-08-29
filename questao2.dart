// Construa  um  programa  que  calcule  a  área  de  um  círculo,  tendo  como
// entrada  o  valor  do  raio,  que  deve  ser  positivo.  Use  o  valor
// da constante “pi” vindo da biblioteca matemática.

import 'dart:io';
import 'dart:math';

void main() {
  print("Digite o raio: ");
  var raio = double.parse(stdin.readLineSync()!);

  if (raio <= 0) {
    print("Erro: o raio deve ser positivo.");
  } else {
    var area = pi * pow(raio, 2);
    print("Área: $area");
  }
}
