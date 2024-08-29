// Construa  um  programa  que  leia  um  número  inteiro  digitado  pelo
// usuário.  Caso  o  número  pertença  ao  intervalo  de  1  a  5,  exiba
// o número por extenso. Caso o número não pertença a este intervalo, exiba a
// mensagem "valor invalido".

import 'dart:io';

void main() {
  print("Digite um número: ");
  var numero = int.parse(stdin.readLineSync()!);

  switch (numero) {
    case 1:
      print("Um");
      break;
    case 2:
      print("Dois");
      break;
    case 3:
      print("Três");
      break;
    case 4:
      print("Quatro");
      break;
    case 5:
      print("Cinco");
      break;
    default:
      print("Valor inválido");
  }
}
