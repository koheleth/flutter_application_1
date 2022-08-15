import 'package:flutter/material.dart';
import 'package:flutter_application_1/questao.dart';
import 'package:flutter_application_1/resposta.dart';

class Questionario extends StatelessWidget {
  final Questao questao;
  final Resposta resposta;

  Questionario(this.questao, this.resposta);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: questao,
    );
  }
}
