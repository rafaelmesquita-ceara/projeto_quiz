import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
main(){
  runApp(new PerguntApp());
}

class PerguntApp extends StatelessWidget{

  void responder(){
    print('Pergunta respondida!');
  }

  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?'
  ];

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
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