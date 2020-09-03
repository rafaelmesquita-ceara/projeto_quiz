import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {

  final perguntas;
  final _perguntaSelecionada;
  final respostas;
  final Function() _responder;

  Questionario(this.perguntas, this._perguntaSelecionada, this.respostas, this._responder);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(perguntas[_perguntaSelecionada]['texto']),
        ...respostas.map((e) => Resposta(e, _responder)),
      ],
    );
  }
}