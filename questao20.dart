// Evolua a questão anterior. Permita que o programa salve o resultado em um
// arquivo binário. Permita que o programa abra o  arquivo binário e exiba o
// conteúdo na tela.

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

  var file = File('pessoas.bin');
  var sink = file.openWrite();
  for (var pessoa in pessoas) {
    sink.write(
        '${pessoa.nome},${pessoa.peso},${pessoa.altura},${pessoa.imc}\n');
  }
  sink.close();

  var lines = file.readAsLinesSync();
  for (var line in lines) {
    var parts = line.split(',');
    var nome = parts[0];
    var peso = double.parse(parts[1]);
    var altura = double.parse(parts[2]);
    var imc = double.parse(parts[3]);
    print('Nome: $nome');
    print('Peso: $peso');
    print('Altura: $altura');
    print('IMC: $imc');
  }
}
