import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
main(){
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
  final perguntas = [
      {
        'texto' : 'Qual é sua cor favorita?',
        'respostas' : ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto' : 'Qual é o seu animal favorito?',
        'respostas' : ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto' : 'Qual é o seu instrutor favorito?',
        'respostas' : ['Maria', 'João', 'Leo', 'Pedro']
      }
    ];

  var _perguntaSelecionada = 0;
  void _responder(){
    setState(() {
      if (_perguntaSelecionada < perguntas.length-1) _perguntaSelecionada++;
    });
  }

  Widget build(BuildContext context){
    
    List<Widget> respostas = [];

    for(var textoResp in perguntas[_perguntaSelecionada]['respostas']){
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas,
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