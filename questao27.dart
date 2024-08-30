// Utilizando o recurso de programação genérica, implemente a estrutura de dados “pilha”.

class Pilha<T> {
  List<T> _lista = [];

  void push(T item) {
    _lista.add(item);
  }

  T? pop() {
    if (_lista.isNotEmpty) {
      return _lista.removeLast();
    } else {
      return null;
    }
  }

  void printAll() {
    print(_lista);
  }
}

void main() {
  var pilhaInt = Pilha<int>();
  var pilhaString = Pilha<String>();

  pilhaInt.push(1);
  pilhaInt.push(2);
  pilhaInt.push(3);

  pilhaString.push("a");
  pilhaString.push("b");
  pilhaString.push("c");

  pilhaInt.printAll();
  pilhaString.printAll();

  print(pilhaInt.pop());
  print(pilhaInt.pop());
  print(pilhaInt.pop());
  print(pilhaInt.pop());

  print(pilhaString.pop());
  print(pilhaString.pop());
  print(pilhaString.pop());
  print(pilhaString.pop());
}
