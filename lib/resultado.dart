import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  int acertos;
  int totalDeQuestoes;

  Resultado(this.acertos, this.totalDeQuestoes);


  @override
  Widget build(BuildContext context) {
    return Center(
      child : Text(
        'Você acertou $acertos/$totalDeQuestoes questões!',
        style: TextStyle(fontSize: 28)
      )
    );
  }
}