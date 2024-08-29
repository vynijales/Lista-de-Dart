// Construa  um  programa   que  calcule  o  rendimento   mensal  de  um
// investimento  em  poupança.  Variáveis:  investimento   inicial, investimento
// mensal, quantidade de meses, saldo acumulado, taxa de juros mensal,
// rendimento mensal.

import 'dart:io';

void main() {
  print("Digite o valor do investimento inicial: ");
  var investimentoInicial = double.parse(stdin.readLineSync()!);

  print("Digite o valor do investimento mensal: ");
  var investimentoMensal = double.parse(stdin.readLineSync()!);

  print("Digite a quantidade de meses: ");
  var quantidadeMeses = int.parse(stdin.readLineSync()!);

  print("Digite a taxa de juros mensal: ");
  var taxaJurosMensal = double.parse(stdin.readLineSync()!);

  var saldoAcumulado = investimentoInicial;
  var rendimentoMensal = 0.0;

  for (var i = 1; i <= quantidadeMeses; i++) {
    saldoAcumulado += investimentoMensal;
    rendimentoMensal = saldoAcumulado * taxaJurosMensal;
    saldoAcumulado += rendimentoMensal;
  }

  print("Saldo acumulado: $saldoAcumulado");
  print("Rendimento mensal: $rendimentoMensal");
}
