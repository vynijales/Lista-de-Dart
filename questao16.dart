// Construa e use uma função que produz um novo vetor de inteiros com a ordem
// inversa do vetor original passado por parâmetro.

import 'dart:io';

List<int> inverterVetor(List<int> vetor) {
  var novoVetor =
      List<int>.generate(vetor.length, (i) => vetor[vetor.length - 1 - i]);
  return novoVetor;
}

void main() {
  print("Digite o tamanho do vetor: ");
  var tamanho = int.parse(stdin.readLineSync()!);

  var vetor = List<int>.generate(tamanho, (i) {
    print("Digite o elemento $i: ");
    return int.parse(stdin.readLineSync()!);
  });

  var novoVetor = inverterVetor(vetor);

  print("Vetor original: $vetor");
  print("Vetor invertido: $novoVetor");
}
