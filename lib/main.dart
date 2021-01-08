import 'dart:ui';

import 'package:flutter/Material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Pessoas 0",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          "Pode Entrar!",
          style: TextStyle(color: Colors.white, fontSize: 30 ,fontStyle: FontStyle.italic),
        ),
      ],
    ),
  ));
}
