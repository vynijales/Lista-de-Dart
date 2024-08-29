// Verificar se a senha, informada durante a execução, é correta. Quando a senha
// estiver correta, exiba “senha correta” e o programa  é encerrado. Quando a
// senha estiver errada, exiba “senha incorreta”, e permita a entrada novamente
// da senha, repetindo esse  processo até que a senha entrada seja correta.
// a) Resolva esse problema utilizando a estrutura while.
// b) Resolva esse problema utilizando a estrutura do-while.

import 'dart:io';

void main() {
  var senhaCorreta = "1234";
  var senhaInformada = "";

  print("Digite a senha: ");
  senhaInformada = stdin.readLineSync()!;

  // a) Utilizando while
  while (senhaInformada != senhaCorreta) {
    print("Senha incorreta. Digite novamente: ");
    senhaInformada = stdin.readLineSync()!;
  }

  print("Senha correta.");

  // b) Utilizando do-while
  do {
    print("Digite a senha: ");
    senhaInformada = stdin.readLineSync()!;
    if (senhaInformada != senhaCorreta) {
      print("Senha incorreta.");
    }
  } while (senhaInformada != senhaCorreta);

  print("Senha correta.");
}
