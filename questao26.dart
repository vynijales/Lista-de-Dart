// Utilizando o recurso de programação genérica, construa um programa que tenha
// funcionalidades de um CRUD (create, read,  update e delete). Teste seu
// programa com as classes Integer e Pessoa (que você mesmo deve criar).

import 'dart:io';

class CRUD<T> {
  List<T> _lista = [];

  void create(T item) {
    _lista.add(item);
  }

  void read() {
    print(_lista);
  }

  void update(int index, T item) {
    if (index >= 0 && index < _lista.length) {
      _lista[index] = item;
    } else {
      print("Erro: índice inválido.");
    }
  }

  void delete(int index) {
    if (index >= 0 && index < _lista.length) {
      _lista.removeAt(index);
    } else {
      print("Erro: índice inválido.");
    }
  }
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  @override
  String toString() {
    return "Nome: $nome, Idade: $idade";
  }
}

void main() {
  var crudPessoa = CRUD<Pessoa>();
  var crudInt = CRUD<int>();

  var pessoa1 = Pessoa("Fulano", 30);
  var pessoa2 = Pessoa("Ciclano", 25);
  var pessoa3 = Pessoa("Beltrano", 40);

  crudPessoa.create(pessoa1);
  crudPessoa.create(pessoa2);
  crudPessoa.create(pessoa3);

  crudPessoa.read();

  var pessoa4 = Pessoa("Novo", 50);
  crudPessoa.update(1, pessoa4);

  crudPessoa.read();

  crudPessoa.delete(1);

  crudPessoa.read();

  crudInt.create(1);
  crudInt.create(2);
  crudInt.create(3);

  crudInt.read();

  crudInt.update(1, 4);

  crudInt.read();

  crudInt.delete(1);

  crudInt.read();
}
