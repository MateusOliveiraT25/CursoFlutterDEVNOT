import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo de Layout com Row e Column'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Elementos em uma coluna:'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.star),
                  Text('Texto ao lado do ícone'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/img/Kobe.png',
                    width: 50,
                    height: 50,
                  ),
                  Text('Kobe Bryant'),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: <Widget>[
                  Text('Elementos em uma coluna dentro de outra coluna:'),
                  Icon(Icons.star),
                  Text('Outro texto'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
