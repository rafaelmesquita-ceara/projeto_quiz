import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {

  final List<Map<String, Object>> perguntas;
  final int _perguntaSelecionada;
  final Function(String selecionada) _responder;

  Questionario(
    this.perguntas, 
    this._perguntaSelecionada, 
    this._responder
    );

  @override
  Widget build(BuildContext context) {
    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];

    return Column(
      children: [
        Questao(perguntas[_perguntaSelecionada]['texto']),
        ...respostas.map((e) => Resposta(e, () => _responder(e))),
      ],
    );
  }
}