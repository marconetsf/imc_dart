import 'package:calculadora_imc/models/pessoa.dart';

void main(List<String> arguments) {
  Pessoa user = Pessoa();
  print("Nome: ${user.nome} | Peso: ${user.peso} | Altura: ${user.altura}");
  print(user.getIMC(user.peso, user.altura));
}
