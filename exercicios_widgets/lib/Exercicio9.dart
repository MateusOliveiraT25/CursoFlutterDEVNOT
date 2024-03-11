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

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página com Abas'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Aba 1'),
            Tab(text: 'Aba 2'),
            Tab(text: 'Aba 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Tab1Content(),
          Tab2Content(),
          Tab3Content(),
        ],
      ),
    );
  }
}

class Tab1Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Conteúdo da Aba 1'),
    );
  }
}

class Tab2Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Conteúdo da Aba 2'),
    );
  }
}

class Tab3Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Conteúdo da Aba 3'),
    );
  }
}
