import 'Tarefa.dart';

class Quadro {
  String nomeQuadro;
  List<Tarefa> tarefas;

  Quadro({
    required this.nomeQuadro,
    this.tarefas = const [],
  });
}
