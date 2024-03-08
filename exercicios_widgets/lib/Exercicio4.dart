import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Jogador {
  final String nome;
  final String posicao;
  final String urlImagem;
  Offset position;

  Jogador(this.nome, this.posicao, this.urlImagem, {required this.position});
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Jogador> melhoresJogadores = [
    Jogador('Lev Yashin', 'Goleiro', 'https://example.com/player1.jpg',
        position: Offset(150, 100)),
    Jogador('Cafu', 'Lateral-direito', 'https://example.com/player2.jpg',
        position: Offset(250, 150)),
    Jogador('Franz Beckenbauer', 'Zagueiro', 'https://example.com/player3.jpg',
        position: Offset(150, 200)),
    Jogador('Paolo Maldini', 'Zagueiro', 'https://example.com/player4.jpg',
        position: Offset(250, 200)),
    Jogador('Roberto Carlos', 'Lateral-esquerdo', 'https://example.com/player5.jpg',
        position: Offset(150, 250)),
    Jogador('Zinedine Zidane', 'Meio-campista', 'https://example.com/player6.jpg',
        position: Offset(250, 250)),
    Jogador('Diego Maradona', 'Meio-campista', 'https://example.com/player7.jpg',
        position: Offset(150, 300)),
    Jogador('Johan Cruyff', 'Atacante', 'https://example.com/player8.jpg',
        position: Offset(250, 300)),
    Jogador('Pelé', 'Atacante', 'https://example.com/player9.jpg',
        position: Offset(150, 350)),
    Jogador('Lionel Messi', 'Atacante', 'https://example.com/player10.jpg',
        position: Offset(250, 350)),
    Jogador('Cristiano Ronaldo', 'Atacante', 'https://example.com/player11.jpg',
        position: Offset(150, 400)),
  ];

  List<Jogador> reservas = [
    Jogador('Neymar', 'Atacante', 'https://example.com/player12.jpg',
        position: Offset(10, 10)),
    Jogador('Kylian Mbappé', 'Atacante', 'https://example.com/player13.jpg',
        position: Offset(10, 10)),
    Jogador('Virgil van Dijk', 'Zagueiro', 'https://example.com/player14.jpg',
        position: Offset(10, 10)),
    Jogador('Kevin De Bruyne', 'Meio-campista', 'https://example.com/player15.jpg',
        position: Offset(10, 10)),
    Jogador('Robert Lewandowski', 'Atacante', 'https://example.com/player16.jpg',
        position: Offset(10, 10)),
    Jogador('Sergio Ramos', 'Zagueiro', 'https://example.com/player17.jpg',
        position: Offset(10, 10)),
    Jogador('Luka Modric', 'Meio-campista', 'https://example.com/player18.jpg',
        position: Offset(10, 10)),
    Jogador('Thiago Silva', 'Zagueiro', 'https://example.com/player19.jpg',
        position: Offset(10, 10)),
    Jogador('Mohamed Salah', 'Atacante', 'https://example.com/player20.jpg',
        position: Offset(10, 10)),
    Jogador('Sadio Mané', 'Atacante', 'https://example.com/player21.jpg',
        position: Offset(10, 10)),
    Jogador('N Golo Kanté', 'Meio-campista', 'https://example.com/player22.jpg',
        position: Offset(10, 10)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posicione os jogadores no campo'),
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/campo_futebol.png'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  for (var jogador in melhoresJogadores)
                    Positioned(
                      left: jogador.position.dx,
                      top: jogador.position.dy,
                      child: Draggable<Jogador>(
                        data: jogador,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(jogador.urlImagem),
                        ),
                        feedback: CircleAvatar(
                          backgroundImage: NetworkImage(jogador.urlImagem),
                          radius: 20,
                        ),
                        childWhenDragging: Container(),
                        onDragEnd: (details) {
                          setState(() {
                            jogador.position = details.offset;
                          });
                        },
                      ),
                    ),
                ],
              ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: reservas.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Draggable<Jogador>(
                      data: reservas[index],
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(reservas[index].urlImagem),
                      ),
                      feedback: CircleAvatar(
                        backgroundImage: NetworkImage(reservas[index].urlImagem),
                        radius: 20,
                      ),
                      childWhenDragging: Container(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
