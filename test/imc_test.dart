import 'package:imc/imc.dart';
import 'package:test/test.dart';

void main() {
  test('CALCULO IMC', () {
    expect(calculoIMC(75, 1.68), equals(27));
  });
}
