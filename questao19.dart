// Construa um programa que registre objetos da classe Pessoa, com os seguintes
// atributos: nome, peso, altura, imc. Permita que o  usuário defina a
// quantidade de pessoas em tempo de execução. Ao cadastrar uma pessoa, calcule
// o IMC (Índice de Massa  Corporal). Ao final, exiba a lista de pessoas (com
// seus respectivos atributos).

import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;
  double imc;

  Pessoa(this.nome, this.peso, this.altura) : imc = peso / (altura * altura);
}

void main() {
  print("Digite a quantidade de pessoas: ");
  var quantidadePessoas = int.parse(stdin.readLineSync()!);

  var pessoas = <Pessoa>[];
  for (var i = 0; i < quantidadePessoas; i++) {
    print("Digite o nome da pessoa ${i + 1}: ");
    var nome = stdin.readLineSync()!;

    print("Digite o peso da pessoa ${i + 1}: ");
    var peso = double.parse(stdin.readLineSync()!);

    print("Digite a altura da pessoa ${i + 1}: ");
    var altura = double.parse(stdin.readLineSync()!);

    pessoas.add(Pessoa(nome, peso, altura));
  }

  print("Pessoas cadastradas:");
  for (var pessoa in pessoas) {
    print("Nome: ${pessoa.nome}");
    print("Peso: ${pessoa.peso}");
    print("Altura: ${pessoa.altura}");
    print("IMC: ${pessoa.imc}");
  }
}
