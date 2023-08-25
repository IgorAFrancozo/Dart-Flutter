import '../enums/StatusTarefa.dart';

class Tarefa {
  String nomeResponsavel;
  String nomeTarefa;
  DateTime dataCriacao;
  DateTime dataConclusao;
  StatusTarefa status;
  Stopwatch? temporizador;

  Tarefa({
    required this.nomeResponsavel,
    required this.nomeTarefa,
    required this.dataCriacao,
    required this.status,
    required this.dataConclusao,
    this.temporizador,
  });
}
