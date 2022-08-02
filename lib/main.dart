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
      }
    ];
    var resp_botoes = [];
    for (var textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
      // print(textoResp);
      resp_botoes.add(textoResp);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            Resposta(resp_botoes[0].toString(), _responder),
            Resposta(resp_botoes[1].toString(), _responder),
            Resposta(resp_botoes[2].toString(), _responder),
            Resposta(resp_botoes[3].toString(), _responder),
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
