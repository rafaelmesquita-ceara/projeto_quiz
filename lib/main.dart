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
  bool _finalizou = false;
  void _responder(){
    setState(() {
      _perguntaSelecionada < perguntas.length-1 ? _perguntaSelecionada++ : _finalizou = true;
    });
  }

  Widget build(BuildContext context){
    
    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body:  _finalizou?  
        Resultado() : Questionario(perguntas, _perguntaSelecionada, respostas, _responder)
        
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
  
}