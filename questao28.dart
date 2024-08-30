// Construa  um  método  que  valide  se  uma  string  possui  seus  parênteses
// colocados  corretamente.  A  string  de  entrada  é  válida  se  a quantidade
// de parênteses abertos for a mesma dos parênteses fechados. Dica: utilize uma
// “pilha” para resolver o problema.
// Exemplo:   entrada: str = "()"       saída: true
// Exemplo:   entrada: str = "()()"     saída: true
// Exemplo:   entrada: str = "(a)b"     saída: true
// Exemplo:   entrada: str = "(a)(b)"   saída: true
// Exemplo:   entrada: str = "(("       saída: false
// Exemplo:   entrada: str = "(a)(b"    saída: false
// Exemplo:   entrada: str = ")("       saída: false
// Exemplo:   entrada: str = ")a()b("   saída: false

import 'dart:io';

bool validaParenteses(String str) {
  var pilha = <String>[];
  for (var i = 0; i < str.length; i++) {
    if (str[i] == '(') {
      pilha.add('(');
    } else if (str[i] == ')') {
      if (pilha.isEmpty) {
        return false;
      }
      pilha.removeLast();
    }
  }
  return pilha.isEmpty;
}

void main() {
  print("Digite uma string: ");
  var str = stdin.readLineSync()!;

  var resultado = validaParenteses(str);

  print(resultado);
}
