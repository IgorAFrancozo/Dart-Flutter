import 'package:hello_dart/hello_dart.dart' as hello_dart;

void main() {
  // Método main aceita List<String> arguments para se comunicar com outras linguagens (recebendo por param)
  // Variaveis
  String nome = 'Joselito';
  String nome1 = 'Ricarth';
  String nome2 = 'Natália';
  double numero = 1.0;
  int idade = 20;
  const pi = 3.14;
  bool ehCadastrado = true;
  int contador = 1;

  // Método Print
  print(
      'Hello world: ${hello_dart.calculate()}! $nome você é o jogador Nº $numero\n'); // Interpolação de variáveis e método

  // Condicional
  if (idade >= 18) {
    print('$nome é maior de idade\n');
  } else {
    print('$nome não é maior de idade\n');
  }

  //Loop de contagem for e while == Diferença é que while não instacia uma variável, necessita estar declarada
  for (int i = 1; i <= 5; i++) {
    print("Contagem For: $i\n");
  }
  while (contador <= 5) {
    print("Contagem While: $contador\n");
    contador++;
  }

  print(
      'A multiplicação entre "pi e 4" é: ${hello_dart.multiply(pi, 7)} !\n'); // Método com parametros para multiplicar

  List<String> listaNomes = [
    nome,
    nome1,
    nome2
  ]; // Lista com limitação do tipo String

  print(
      'O primeiro nome da lista é: ${listaNomes.getRange(0, 1)}.\nTodos os nomes na lista: $listaNomes');

  List<dynamic> dinamica = [
    1,
    "O filme é bom?",
    true
  ]; //Lista dinâmica independente de tipo

  String frase =
      "O Jogador Nº ${dinamica[0]} é um Filme de ficção com muitas relações do mundo Geek. ${dinamica[1]} ${dinamica[2]}";
  print(frase);
}
