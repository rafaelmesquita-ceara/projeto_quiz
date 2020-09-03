import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
main(){
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
  final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

  var _perguntaSelecionada = 0;
  void _responder(){
    setState(() {
      if (_perguntaSelecionada < perguntas.length-1) _perguntaSelecionada++;
    });
  }

  Widget build(BuildContext context){
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder)
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
  
}