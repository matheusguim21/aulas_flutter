import 'dart:html';

import 'package:flutter/material.dart';

class Resposta extends StatefulWidget {
  State<Resposta> createState() => _RespostaState();
}

class _RespostaState extends State<Resposta> {
  final String texto;
  final Function fn;

  _RespostaState(this.fn, this.texto);

  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
      onPressed: null,
      child: Text("Resposta"),
    ));
  }
}
