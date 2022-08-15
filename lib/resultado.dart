import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String resultadoFinal;

  Resultado(this.resultadoFinal);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultadoFinal,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
