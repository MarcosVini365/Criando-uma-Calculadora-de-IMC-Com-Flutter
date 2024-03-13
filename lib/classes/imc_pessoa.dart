class Pessoa {
  String _nome = '';
  double _peso = 0;
  double _altura = 0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setpeso(double peso) {
    _peso = peso;
  }

  double getpeso() {
    return _peso;
  }

  void setaltura(double altura) {
    _altura = altura;
  }

  double getaltura() {
    return _altura;
  }

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  @override
  String toString() {
    return "Nome: $_nome, Peso: $_peso, Altura: $_altura";
  }
}
