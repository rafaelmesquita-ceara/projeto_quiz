import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
main(){
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp>{
  final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

  var perguntaSelecionada = 0;
  void responder(){
    setState(() {
      perguntaSelecionada < perguntas.length - 1 ? perguntaSelecionada++ : null;
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
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: () => responder(),
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: () => responder(),
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: () => responder(),
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  PerguntaAppState createState() {
    return PerguntaAppState();
  }
  
}