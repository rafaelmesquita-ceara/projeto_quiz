import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  int acertos;
  int totalDeQuestoes;
  final void Function() reiniciarQUestionario;

  Resultado(this.acertos, this.totalDeQuestoes, this.reiniciarQUestionario);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child : Text(
            'Você acertou $acertos/$totalDeQuestoes questões!',
            style: TextStyle(fontSize: 28)
          )
        ),
        FlatButton(
          child: Text('Reiniciar?'),
          textColor: Colors.blue,
          onPressed: reiniciarQUestionario,
        )
      ],
    );
  }
}