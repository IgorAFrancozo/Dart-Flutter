

import 'package:hello_dart/enums/StatusTarefa.dart';
import 'package:hello_dart/models/Quadro.dart';
import 'package:hello_dart/models/Tarefa.dart';
import 'package:hello_dart/services/GerenciadorTarefas.dart';

void main() {
  var gerenciador = GerenciadorTarefas();

  var tarefa1 = Tarefa(
    nomeResponsavel: 'Alice',
    nomeTarefa: 'Fazer relatório',
    dataCriacao: DateTime.now(),
    status: StatusTarefa.Novo,
    dataConclusao: DateTime.now(),
  );

  var tarefa2 = Tarefa(
    nomeResponsavel: 'Bob',
    nomeTarefa: 'Testar aplicativo',
    dataCriacao: DateTime.now(),
    status: StatusTarefa.Novo,
    dataConclusao: DateTime.now(),
  );

  var quadro1 = Quadro(nomeQuadro: 'Quadro A', tarefas: [tarefa1]);
  var quadro2 = Quadro(nomeQuadro: 'Quadro B', tarefas: [tarefa2]);

  gerenciador.quadros.add(quadro1);
  gerenciador.quadros.add(quadro2);

  print('Tarefas antes da mudança de status:');
  for (var quadro in gerenciador.quadros) {
    print('Quadro: ${quadro.nomeQuadro}');
    for (var tarefa in quadro.tarefas) {
      print(' - ${tarefa.nomeTarefa} (${tarefa.status})');
    }
  }

  gerenciador.mudarStatusTarefa(tarefa1, StatusTarefa.Fazendo);

  gerenciador.mudarStatusTarefa(tarefa2, StatusTarefa.Concluido);

  print('\nTarefas após a mudança de status:');
  for (var quadro in gerenciador.quadros) {
    print('Quadro: ${quadro.nomeQuadro}');
    for (var tarefa in quadro.tarefas) {
      print(' - ${tarefa.nomeTarefa} (${tarefa.status})');
      if (tarefa.status == StatusTarefa.Fazendo) {
        print('   - Tempo decorrido: ${tarefa.temporizador?.elapsed}');
      }
    }
  }
}
