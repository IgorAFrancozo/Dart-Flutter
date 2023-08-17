import 'package:hello_dart/hello_dart.dart' as hello_dart;

void main() {
  // Método main aceita List<String> arguments para se comunicar com outras linguagens (recebendo por param)
  // Variaveis
  double numero = 1.0;
  int idade = 20;
  String nome = "Joselito";
  const pi = 3.14;
  bool ehCadastrado = true;
  int contador = 1;

  // Método Print
  print(
      'Hello world: ${hello_dart.calculate()}! $nome você é o jogador Nº $numero'); // Interpolação de variáveis e método

  // Condicional
  if (idade >= 18) {
    print('$nome é maior de idade');
  } else {
    print('$nome não é maior de idade');
  }

  //Loop de contagem for e while == Diferença é que while não instacia uma variável, necessita estar declarada
  for (int i = 1; i <= 5; i++) {
    print("Contagem For: $i");
  }
  while (contador <= 5) {
    print("Contagem While: $contador");
    contador++;
  }

  print('A multiplicação entre "pi e 4" é: ${hello_dart.multiply(pi, 4)} !');

}
