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
  final List<Jogador> timeEsquerda = [
    Jogador('Manuel Neuer', 'Goleiro', 'https://example.com/player1.jpg',
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

  final List<Jogador> timeDireita = [
    Jogador('Gianluigi Buffon', 'Goleiro', 'https://example.com/player12.jpg',
        position: Offset(600, 100)),
    Jogador('Dani Alves', 'Lateral-direito', 'https://example.com/player13.jpg',
        position: Offset(500, 150)),
    Jogador('Fabio Cannavaro', 'Zagueiro', 'https://example.com/player14.jpg',
        position: Offset(600, 200)),
    Jogador('Sergio Ramos', 'Zagueiro', 'https://example.com/player15.jpg',
        position: Offset(500, 200)),
    Jogador('Marcelo', 'Lateral-esquerdo', 'https://example.com/player16.jpg',
        position: Offset(600, 250)),
    Jogador('Andrea Pirlo', 'Meio-campista', 'https://example.com/player17.jpg',
        position: Offset(500, 250)),
    Jogador('Xavi', 'Meio-campista', 'https://example.com/player18.jpg',
        position: Offset(600, 300)),
    Jogador('Luka Modric', 'Meio-campista', 'https://example.com/player19.jpg',
        position: Offset(500, 300)),
    Jogador('Marco Van Basten', 'Atacante', 'https://example.com/player20.jpg',
        position: Offset(600, 350)),
    Jogador('Ronaldo', 'Atacante', 'https://example.com/player21.jpg',
        position: Offset(500, 350)),
    Jogador('Ronaldinho', 'Atacante', 'https://example.com/player22.jpg',
        position: Offset(600, 400)),
  ];

  Jogador? jogadorSelecionado;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Futebol'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Monte seu time'),
                Tab(text: 'História'),
                Tab(text: 'Regras'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Stack(
                children: [
                  Image.asset(
              'assets/campo_futebol.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            for (var jogador in timeEsquerda)
              Positioned(
                left: jogador.position.dx,
                top: jogador.position.dy,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    setState(() {
                      jogador.position += details.delta;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(jogador.urlImagem),
                        radius: 20,
                      ),
                      SizedBox(height: 4),
                      Text(
                        jogador.nome,
                        style: TextStyle(color: Color.fromARGB(255, 155, 217, 9)),
                      ),
                    ],
                  ),
                ),
              ),
            for (var jogador in timeDireita)
              Positioned(
                left: jogador.position.dx,
                top: jogador.position.dy,
                child: GestureDetector(//para detectar o gesto de arrastar e mover os jogadores.
                //Para cada jogador, você criou um widget GestureDetector 
                  onPanUpdate: (details) {//você atualiza a posição do jogador  (jogador.position)
                   // adicionando a diferença entre a posição anterior e a nova posição do gesto (details.delta)
                    setState(() {// Ao chamar setState dentro do onPanUpdate, você informa ao Flutter que o estado do widget
                    // mudou e que ele deve reconstruir a interface para refletir essa mudança.
                      jogador.position += details.delta;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(jogador.urlImagem),
                        radius: 20,
                      ),
                      SizedBox(height: 4),
                      Text(
                        jogador.nome,
                          style: TextStyle(color: Color.fromARGB(255, 165, 235, 3)),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
             Center(
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Text(
      'O futebol é um dos esportes mais populares do mundo, com uma história rica e diversificada. '
      'Originado na Inglaterra, o esporte se espalhou rapidamente por todo o mundo, tornando-se uma paixão global. '
      'Com regras simples e a capacidade de unir pessoas de diferentes culturas e origens, o futebol transcende barreiras e é um símbolo de união e competição saudável.',
      style: TextStyle(fontSize: 18),
    ),
  ),
),

              ListView(
                children: [
                  ListTile(
                    title: Text('Regra 1: O objetivo do jogo'),
                    subtitle: Text('O objetivo do futebol é marcar mais gols do que o adversário.'),
                  ),
                  ListTile(
                    title: Text('Regra 2: Duração da partida'),
                    subtitle: Text('Um jogo de futebol é dividido em dois tempos de 45 minutos cada, com um intervalo de 15 minutos.'),
                  ),
                  ListTile(
                    title: Text('Regra 3: Número de jogadores'),
                    subtitle: Text('Cada time de futebol é composto por 11 jogadores, incluindo um goleiro.'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
