import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  // const Resposta({Key? key}) : super(key: key);
  final String textoResposta;
  final void Function() quandoSelecionado;

  Resposta(this.textoResposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blue[700],
              onPrimary: Colors.white,
              elevation: 15.0),
          onPressed: quandoSelecionado,
          child: Text(
            textoResposta,
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
          )),
    );
  }
}
