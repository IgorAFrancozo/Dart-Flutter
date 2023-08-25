import '../enums/StatusTarefa.dart';
import '../models/Quadro.dart';
import '../models/Tarefa.dart';

class GerenciadorTarefas {
  List<Quadro> quadros = [];

  void adicionarTarefa(String nomeQuadro, Tarefa tarefa) {
    Quadro? quadroEncontrado;

    for (var quadro in quadros) {
      if (quadro.nomeQuadro == nomeQuadro) {
        quadroEncontrado = quadro;
        break;
      }
    }

    if (quadroEncontrado != null) {
      quadroEncontrado.tarefas.add(tarefa);
    }
  }

  void mudarStatusTarefa(Tarefa tarefa, StatusTarefa novoStatus) {
    tarefa.status = novoStatus;
    if (novoStatus == StatusTarefa.Concluido) {
      tarefa.dataConclusao = DateTime.now();
    } else if (novoStatus == StatusTarefa.Fazendo) {
      tarefa.temporizador = Stopwatch()..start();
    } else {
      tarefa.temporizador?.stop();
    }
  }
}
