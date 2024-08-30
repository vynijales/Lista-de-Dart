// Construa um programa para implementar, apenas, um codificador de Huffman.
// Exemplo:  Entrada: ABRACADABRA  Saída: 1 01 000 1 0010 1 0011 1 01 000 1

import 'dart:io';

void main() {
  print("Digite a sequência de caracteres: ");
  var sequencia = stdin.readLineSync()!;

  var frequencia = Map<String, int>();
  for (var i = 0; i < sequencia.length; i++) {
    var caractere = sequencia[i];
    if (frequencia.containsKey(caractere)) {
      frequencia[caractere] = frequencia[caractere]! + 1;
    } else {
      frequencia[caractere] = 1;
    }
  }

  var arvore = <Map<String, dynamic>>[];
  frequencia.forEach((caractere, frequencia) {
    arvore.add({"caractere": caractere, "frequencia": frequencia});
  });

  while (arvore.length > 1) {
    arvore.sort((a, b) => a["frequencia"].compareTo(b["frequencia"]));
    var esquerda = arvore.removeAt(0);
    var direita = arvore.removeAt(0);
    arvore.add({
      "caractere": "",
      "frequencia": esquerda["frequencia"] + direita["frequencia"],
      "esquerda": esquerda,
      "direita": direita
    });
  }

  var codigos = Map<String, String>();
  void gerarCodigos(Map<String, dynamic> no, String codigo) {
    if (no["caractere"] != "") {
      codigos[no["caractere"]] = codigo;
    } else {
      gerarCodigos(no["esquerda"], codigo + "0");
      gerarCodigos(no["direita"], codigo + "1");
    }
  }

  gerarCodigos(arvore[0], "");

  var saida = "";
  for (var i = 0; i < sequencia.length; i++) {
    saida += codigos[sequencia[i]]!;
  }

  print(saida);
}
