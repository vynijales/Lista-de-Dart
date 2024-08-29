// Evolua a questão anterior. Permita que o programa salve o resultado em um
// arquivo de texto CSV. Permita que o programa abra o  arquivo de texto CSV e
// exiba o conteúdo na tela.

import 'dart:io';

void main() {
  print("Digite uma frase: ");
  var frase = stdin.readLineSync()!;

  var palavras = <String, int>{};
  for (var palavra in frase.split(' ')) {
    if (palavras.containsKey(palavra)) {
      palavras[palavra] = palavras[palavra]! + 1;
    } else {
      palavras[palavra] = 1;
    }
  }

  var file = File('palavras.csv');
  var sink = file.openWrite();
  for (var palavra in palavras.keys) {
    sink.write('$palavra=${palavras[palavra]}\n');
  }
  sink.close();

  var lines = file.readAsLinesSync();
  for (var line in lines) {
    print(line);
  }
}
