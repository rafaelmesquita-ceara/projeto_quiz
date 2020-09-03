import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';
main(){
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
  final perguntas = [
      {
        'texto' : 'Qual é sua cor favorita?',
        'respostas' : ['Preto', 'Vermelho', 'Verde', 'Branco'],
        'correta' : 0
      },
      {
        'texto' : 'Qual é o seu animal favorito?',
        'respostas' : ['Coelho', 'Cobra', 'Elefante', 'Leão'],
        'correta' : 3
      },
      {
        'texto' : 'Qual é o seu instrutor favorito?',
        'respostas' : ['Maria', 'João', 'Leo', 'Pedro'],
        'correta' : 2
      }
    ];

  var _perguntaSelecionada = 0;
  bool _finalizou = false;
  int _acertos = 0;
  
  void _responder(String selecionada){
    int respostaCorreta = perguntas[_perguntaSelecionada]['correta'];
    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];
    print('A resposta selecionada é $selecionada e a resposta correta é ${respostas[respostaCorreta]}');
    setState(() {
      _perguntaSelecionada < perguntas.length-1 ? _perguntaSelecionada++ : _finalizou = true;
      selecionada == respostas[respostaCorreta] ? _acertos++ : null;
    });
    print('Acertos: $_acertos');
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body:  _finalizou?  
        Resultado(_acertos, perguntas.length) : Questionario(perguntas, _perguntaSelecionada, (e) => _responder(e))
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
  
}