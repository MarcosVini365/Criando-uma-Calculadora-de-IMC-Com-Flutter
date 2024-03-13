import 'dart:convert';
import 'dart:io';

// INPUTS
String inputUser(texto) {
  print(texto);
  String valor = stdin.readLineSync(encoding: utf8).toString();
  return valor;
}

double calculoIMC(double peso, double altura) {
  double calImc = peso / (altura * altura);
  return calImc.roundToDouble();
}

// CALCULO
String retornoClass(double function) {
  String imprimirClass = '';
  double valorRetornado = function;

  if (valorRetornado < 16.9) {
    imprimirClass = 'Muito abaixo do Peso';
  } else if (valorRetornado >= 17 && valorRetornado <= 18.4) {
    imprimirClass = 'Abaixo do Peso';
  } else if (valorRetornado >= 18.5 && valorRetornado <= 24.9) {
    imprimirClass = 'Peso normal';
  } else if (valorRetornado >= 25 && valorRetornado <= 29.9) {
    imprimirClass = 'Acima do Peso';
  } else if (valorRetornado >= 30 && valorRetornado <= 34.9) {
    imprimirClass = 'Obesidade Grau 1';
  } else if (valorRetornado >= 35 && valorRetornado <= 40) {
    imprimirClass = 'Obesidade Grau 2';
  } else if (valorRetornado > 40) {
    imprimirClass = 'Obesidade Grau 3';
  }
  return "Calculo IMC: ${valorRetornado}\nClassificação: ${imprimirClass}";
}
