import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListPage(),
    );
  }
}

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Produtos'),
      ),
      body: ListView(
        children: <Widget>[
          ProductCard(
            image: 'https://via.placeholder.com/150',
            title: 'Tênis Nike Air Max',
            description: 'Tênis esportivo de alta performance.',
          ),
          ProductCard(
            image: 'https://via.placeholder.com/150',
            title: 'Tênis Adidas Ultraboost',
            description: 'Tênis de corrida com tecnologia Boost.',
          ),
          ProductCard(
            image: 'https://via.placeholder.com/150',
            title: 'Tênis Asics Gel Nimbus',
            description: 'Tênis confortável para corridas longas.',
          ),
          // Adicione mais ProductCards conforme necessário
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(image),
          ListTile(
            title: Text(title),
            subtitle: Text(description),
          ),
        ],
      ),
    );
  }
}

