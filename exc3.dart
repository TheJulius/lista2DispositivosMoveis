class Funcionario {
  String? nome;
  double? salario;

  Funcionario(String nome, double salario) {
    this.nome = nome;
    this.salario = salario;
  }

  double calcularComissao(double valorVendas, int comissao) {
    return valorVendas * (comissao / 100);
  }

  double calcularSalario(double valorVendas, int comissao) {
    double calculoComissao = calcularComissao(valorVendas, comissao);
    return this.salario! + calculoComissao;
  }
}

main() {
  var fulano = Funcionario("Teste", 1250.00);

  fulano.calcularSalario(1000.00, 10);

  print(
      "O funcionário ${fulano.nome} deverá receber este mês o valor de ${fulano.calcularSalario(1000.00, 10)}, sendo ${fulano.salario} de salário e ${fulano.calcularComissao(1000.00, 10)} de comissão.");
}
