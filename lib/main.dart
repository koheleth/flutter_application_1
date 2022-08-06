import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/questao.dart';
import 'package:flutter_application_1/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  int qtdaPerguntas = 0;

  int _responder() {
    setState(() {
      if (_perguntaSelecionada < qtdaPerguntas - 1) {
        _perguntaSelecionada++;
      } else {
        _perguntaSelecionada = 0;
      }
    });
    print('Valor é $_perguntaSelecionada');
    return _perguntaSelecionada;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual é o seu tipo de filme?',
        'respostas': ['Terror', 'Ação', 'Aventura', 'Comédia'],
      },
      {
        'texto': 'Qual é o seu tipo de série?',
        'respostas': ['Comédia', 'sitcom', 'mistério', 'policial'],
      },
      {
        'texto': 'Qual é sua comida favorita?',
        'respostas': ['Massas', 'sopas', 'doces', 'salgados'],
      }
    ];
    List<String> respostas =
        perguntas[_perguntaSelecionada].cast()['respostas'];
    qtdaPerguntas = perguntas.length;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
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
