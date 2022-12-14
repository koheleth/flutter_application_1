import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  // const Questao({Key? key}) : super(key: key);
  final String texto;
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        texto,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
