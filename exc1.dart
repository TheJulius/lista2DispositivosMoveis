import 'dart:io';

main() {
  var num = 0;
  List<String> listNomeDaConta = [];
  List<int> listNumeroDaConta = [];
  List<double> listSaldoDaConta = [];
  List<String> listNegativadoOuNao = [];
  var contadorNegativo = 0;
  int numeroDaConta = 0;

  while (num <= 10000 || numeroDaConta == -999) {
    print("Para sair, digite -999");
    print("Entre o numero da conta:");
    numeroDaConta = int.parse(stdin.readLineSync()!);
    listNumeroDaConta.add(numeroDaConta);

    print("Entre o saldo da conta:");
    listSaldoDaConta.add(double.parse(stdin.readLineSync()!));

    if (listSaldoDaConta[num] < 0) {
      listNegativadoOuNao.add("Negativo");
      contadorNegativo++;
    } else {
      listNegativadoOuNao.add("Positivo");
    }

    print("Entre o nome da conta.");
    listNomeDaConta.add(stdin.readLineSync()!);

    print("");

    for (var i = 0; i < listNumeroDaConta.length; i++) {
      print("Cliente $i");
      print("Nome: $listNomeDaConta");
      print("Numero da Conta: $listNumeroDaConta");
      print("Saldo: $listSaldoDaConta");
      print("Status: $listNegativadoOuNao");
      print("");
    }

    print("Quantidade de Negativados: $contadorNegativo");
    print("");
  }

  listNomeDaConta.removeLast();
}
