import 'dart:ui';

import 'package:flutter/Material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Pessoas", home: Home()));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people=0;
  String _info = "Pode Entrar!";

  void _changePeople (int quantity) {
    setState(() {
      _people += quantity;

      if (_people < 0) {
        _info = "Que isso? Tem pessoas morrendo?!";
      } else if (_people > 10) {
        _info =  "Lotado!";
      } else {
        _info = "Pode Entrar!";
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  child: Text("+1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: (){ _changePeople(1); }) ,
                ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  child: Text("-1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  onPressed: () { _changePeople(-1); },
                ),
              ),
            ]),
            Text(
              _info,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ],
    );
  }
}

