import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/questao.dart';
import 'package:flutter_application_1/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('Valor é $_perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'Texto',
        'Qual é a sua cor favorita?',
      },
      'Qual é o seu animal favorito?',
      'Qual é o seu prato favorito',
      'Qual é seu filme favorito',
      'Qual é a sua série favorita'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 001', _responder),
            Resposta('Resposta 002', _responder),
            Resposta('Resposta 003', _responder),
            Resposta('Resposta 004', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
