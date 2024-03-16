import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBarPage(),
    );
  }
}

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // número de abas
      child: Scaffold(
        appBar: AppBar(
          title: Text('Página com Abas'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Aba 1'),
              Tab(text: 'Aba 2'),
              Tab(text: 'Aba 3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Conteúdo da Aba 1'),
            ),
            Center(
              child: Text('Conteúdo da Aba 2'),
            ),
            Center(
              child: Text('Conteúdo da Aba 3'),
            ),
          ],
        ),
      ),
    );
  }
}
