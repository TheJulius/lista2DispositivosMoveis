import 'dart:io';

void main() {
  List<int> menosDe21 = [];
  List<int> maisDe50 = [];
  List<int> idadesInvalidas = [];

  int idade;

  print("Entre a quantidade de pessoas que vão dizer a idade:");
  int? qtdPessoas = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < qtdPessoas; i++) {
    print("Idade da pessoa ${i + 1}");
    idade = int.parse(stdin.readLineSync()!);
    if (idade > 0 && idade < 140) {
      if (idade < 21) {
        menosDe21.add(idade);
      }

      if (idade > 50) {
        maisDe50.add(idade);
      }
    } else {
      print("A idade tem que ser MAIOR que zero e MENOR que 140");
      print("");
      idadesInvalidas.add(idade);
    }
  }

  print("Pessoas com idade menor a 21: ${menosDe21.length}");
  print("Pessoas com idade mais de 50: ${maisDe50.length}");
  print("Pessoas com idade invalida: ${idadesInvalidas.length}");
}
