import 'dart:convert';
import 'dart:io';
import 'dart:math';

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  String get nome => _nome;
  double get peso => _peso;
  double get altura => _altura;

  leNomeViaTerminal() {
    print("Digite Nome: ");
    _nome = stdin.readLineSync(encoding: utf8) ?? "";
  }

  lePesoViaTerminal() {
    print("Digite Peso: ");
    var readPeso = stdin.readLineSync(encoding: utf8) ?? 0.0;
    _peso = double.parse(readPeso.toString());
  }

  leAlturaViaTerminal() {
    print("Digite Altura: ");
    var readAltura = stdin.readLineSync(encoding: utf8) ?? 0.0;
    _altura = double.parse(readAltura.toString());
  }

  Pessoa() {
    leNomeViaTerminal();
    lePesoViaTerminal();
    leAlturaViaTerminal();
  }

  double getIMC(double peso, double altura) {
    return calculaIMC(peso, altura);
  }
}

double calculaIMC(double peso, double altura) {
  return peso / pow(altura, 2);
}
