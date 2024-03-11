import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Drawer'),
        // Adiciona um ícone de menu na barra de aplicativo
        // para abrir o Drawer
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      // Define o Drawer como o menu lateral
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Opção 1'),
              onTap: () {
                // Implemente a ação da opção 1 aqui
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Opção 2'),
              onTap: () {
                // Implemente a ação da opção 2 aqui
                Navigator.pop(context);
              },
            ),
            // Adicione mais ListTiles para mais opções
          ],
        ),
      ),
      body: Center(
        child: Text('Conteúdo da página'),
      ),
    );
  }
}
