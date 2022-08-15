import 'package:flutter/material.dart';
import 'package:flutter_application_1/questao.dart';
import 'package:flutter_application_1/resposta.dart';
import 'package:flutter_application_1/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
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

  int _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print('Valor é $_perguntaSelecionada');
    return _perguntaSelecionada;
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Column(
                  children: <Widget>[
                    Questao(
                        _perguntas[_perguntaSelecionada]['texto'].toString()),
                    ...respostas.map((t) => Resposta(t, _responder)).toList(),
                  ],
                )
              : Resultado('Parabéns por ter terminado')),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
