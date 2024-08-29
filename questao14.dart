// Construa um programa que simule uma calculadora. Disponibilize um menu de
// opções e simule a opção desejada, exibindo  novamente o menu, até que o
// usuário escolha sair.  Menu de opções:  1 - potenciação   Dica: utilize a
// função da biblioteca matemática.  2 - raiz quadrada   Dica: utilize a função
// da biblioteca matemática.  3 - fatorial   Dica: crie e utilize uma função com
// a solução da questão anterior.  0 - sair

import 'dart:io';
import 'dart:math';

num calcularPotenciacao(double base, double expoente) {
  return pow(base, expoente);
}

double calcularRaizQuadrada(double numero) {
  return sqrt(numero);
}

int calcularFatorial(int numero) {
  var fatorial = 1;
  for (var i = 1; i <= numero; i++) {
    fatorial *= i;
  }
  return fatorial;
}

void main() {
  var opcao = -1;
  while (opcao != 0) {
    print("Menu de opções:");
    print("1 - potenciação");
    print("2 - raiz quadrada");
    print("3 - fatorial");
    print("0 - sair");
    print("Digite a opção desejada: ");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print("Digite a base: ");
        var base = double.parse(stdin.readLineSync()!);
        print("Digite o expoente: ");
        var expoente = double.parse(stdin.readLineSync()!);
        print("Resultado: ${calcularPotenciacao(base, expoente)}");
        break;
      case 2:
        print("Digite o número: ");
        var numero = double.parse(stdin.readLineSync()!);
        print("Resultado: ${calcularRaizQuadrada(numero)}");
        break;
      case 3:
        print("Digite o número: ");
        var numero = int.parse(stdin.readLineSync()!);
        print("Resultado: ${calcularFatorial(numero)}");
        break;
      case 0:
        print("Saindo...");
        break;
      default:
        print("Opção inválida.");
    }
  }
}
