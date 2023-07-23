import 'package:calculadora_imc/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('calcula imc', () {
    expect(calculaIMC(68.2, 1.71), 23.323415751855276);
  });
}
