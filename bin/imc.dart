import 'package:imc/classes/imc_pessoa.dart';
import 'package:imc/imc.dart';

void main(List<String> arguments) {
  String op = "";
  do {
    String nomeUsuario = inputUser('Digite seu Nome');
    try {
      if (nomeUsuario == "") {
        print('UTILIZE UM NOME VALIDO!');
      } else {
        try {
          double pesoUsuario = double.parse(inputUser("Digite seu Peso: "));
          double alturaUsuario = double.parse(inputUser("Digite seu Altura: "));
          Pessoa p1 = Pessoa(nomeUsuario, pesoUsuario, alturaUsuario);
          print('-' * 30);
          print(p1.toString());
          print(retornoClass(calculoIMC(pesoUsuario, alturaUsuario)));
        } catch (e) {
          print('VALOR INCORRETO');
        }
      }
    } catch (e) {
      print(e);
    }
    print('-' * 30);
    op = inputUser("Quer Continuar SIM [S] / NÃO [N]").toUpperCase();
  } while (op != 'N');
  print('PROGRAMA FINALIZADO');
}
