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
    Jogador('Manuel Neuer', 'Goleiro', 'https://imgs.search.brave.com/r6LASJRhw_S1TnwFAZxeM5sZJe_dE99PVOFO7pwRygY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy8x/LzEwLzIwMTgwNjAy/X0ZJRkFfRnJpZW5k/bHlfTWF0Y2hfQXVz/dHJpYV92cy5fR2Vy/bWFueV9NYW51ZWxf/TmV1ZXJfODUwXzA3/MjMuanBn',
        position: Offset(150, 100)),
    Jogador('Cafu', 'Lateral-direito', 'https://imgs.search.brave.com/b46sLCugmiviWAHfEUqTBqwmcvgU6cntXRWdg_6CCtE/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNjYy/NTcxODQwL3Bob3Rv/L21hcmNvcy1jYWZ1/LWFjLW1pbGFuLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz04/NlY3amVIRmhza1Bj/ejlWc3dDYXZ0b3du/d0xNbXRseXM2QWh1/emVrcFlZPQ',
        position: Offset(250, 150)),
    Jogador('Franz Beckenbauer', 'Zagueiro', 'https://imgs.search.brave.com/V6rPSDUJM_6jaxr9jcuN6J-jmujCbhr1ZRjFT64B4yA/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNTE1/MTEyMDQ4L3B0L2Zv/dG8vZnJhbnotYmVj/a2VuYmF1ZXItbWVt/YmVyLW9mLXRoZS13/ZXN0LWdlcm1hbi1z/b2NjZXItdGVhbS13/aG8tbGF0ZXItc2ln/bmVkLWEtY29udHJh/Y3Qtd2l0aC10aGUu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PW1PallMeXE1Nzk2/Mk4xZklWOGNkemdo/RWlsNzVNZ1hRazda/a0o5cEFScUE9',
        position: Offset(150, 200)),
    Jogador('Paolo Maldini', 'Zagueiro', 'https://imgs.search.brave.com/6Z0l4fhgzXXAsK8aAl3-NJnqAoe-2FuIYN0ZCWTXwNU/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzZmL2Yw/LzM0LzZmZjAzNDAw/ODZmNmJhNWMyNjFk/ZDAxNjRkMGYzOGEx/LmpwZw',
        position: Offset(250, 200)),
    Jogador('Roberto Carlos', 'Lateral-esquerdo', 'https://imgs.search.brave.com/6bKKK_HpUbrzPFoMXjX4_r8mZ2XUV21y8R4be3USzUc/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/YS50cmFuc2Zlcm1h/cmt0LnRlY2hub2xv/Z3kvcG9ydHJhaXQv/YmlnLzc1MTgtMTU5/NTMyMTgxNy5qcGc_/bG09MQ',
        position: Offset(150, 250)),
    Jogador('Zinedine Zidane', 'Meio-campista', 'https://imgs.search.brave.com/4CivWr2tBrwPCeXQy0d28S_93_m6J_HwWK5Il5l1Nv4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTY0/MDE4Mi9waG90by9h/LXBvcnRyYWl0LW9m/LXppbmVkaW5lLXpp/ZGFuZS1vZi1qdXZl/bnR1cy10YWtlbi1k/dXJpbmctdGhlLWNs/dWItcGhvdG9jYWxs/LW1hbmRhdG9yeS1j/cmVkaXQuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPTdxUWsz/S2NfYnU3eGZLMTRB/NXVtU2RMVHdyNUlG/dzd2SVZ3RUxDdUFf/SUk9',
        position: Offset(250, 250)),
    Jogador('Diego Maradona', 'Meio-campista', 'https://imgs.search.brave.com/vJiruOSgT9OcaL1qXKyxo98JeEvsVcNJoLaeTn0cPsU/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNjQ5/Njg5NTA2L3Bob3Rv/L21hcmNvcy1jYWZ1/LWFjLW1pbGFuLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz03/N0JZS0hVUjBRT3d2/WUNvUVdZbU9oZzZo/VmpMVEdPdWpJZUk5/WT0',
        position: Offset(150, 300)),
    Jogador('Pelé', 'Atacante', 'https://imgs.search.brave.com/Di8EkZ43GJN8dJ6dUfPLXz-RZdsvV45kFLZ9KccB-lE/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/YmxhY2tzcGFjZS5j/b20vaW1hZ2VzL0Ev/NC8yNC9Bc3NldHMt/b2YtUGVsZS1KYW1l/LnBuZz9jPTcwMGwz/ZGtjYjh1aWllcmlw/dGVzMjNlMXM5amtm/NXJsY3V6Mml1ajBz/MnBwc3o4dWJ3ZTly/czBkazI5cjZkYThj/cm8yanRzMnl6ZHN0/cTJqcDBlZzR3c2l5/cWExNTQwNjkzNTQz/NzU3MzZmMjU3Yjc4/MmZiMjJmMzNkZTVj/OTM0NTIuanBn',
        position: Offset(250, 300)),
    Jogador('Ronaldo Nazário', 'Atacante', 'https://imgs.search.brave.com/7uBYnr00ef9mmisYDm8TPwYWRcVZYzQ1rfM3HwUPUnw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Y0/L2YxLzg4ZjRmMTg5/NzZlYzZmN2ZmMTY1/OTQ3Y2I5OTY3NzA0/YjcyY2I1LmpwZz9z/PTYxMng2MTIm/dz0wJms9MjAmYz0w/N0o2YmJEUHhrQnRS/WmlmcmltaFFCWFhH/WFBWVjJ3MGVRRE09',
        position: Offset(150, 350)),
  ];

  final List<Jogador> timeDireita = [
    Jogador('Oliver Kahn', 'Goleiro', 'https://imgs.search.brave.com/bQVRHBbjATNs8bAhbZAWcS9NSC_6BUnzr2G9N2pXKZA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cubWVkaWEtc3R1ZGlvLmNvbS9kZWZhdWx0L2ltYWdlcy9ncmFwaHFsL2tvbWJpbC5qcGc_zT0w',
        position: Offset(850, 100)),
    Jogador('Cafu', 'Lateral-direito', 'https://imgs.search.brave.com/b46sLCugmiviWAHfEUqTBqwmcvgU6cntXRWdg_6CCtE/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNjYy/NTcxODQwL3Bob3Rv/L21hcmNvcy1jYWZ1/LWFjLW1pbGFuLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz04/NlY3amVIRmhza1Bj/ejlWc3dDYXZ0b3du/d0xNbXRseXM2QWh1/emVrcFlZPQ',
        position: Offset(750, 150)),
    Jogador('Franz Beckenbauer', 'Zagueiro', 'https://imgs.search.brave.com/V6rPSDUJM_6jaxr9jcuN6J-jmujCbhr1ZRjFT64B4yA/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNTE1/MTEyMDQ4L3B0L2Zv/dG8vZnJhbnotYmVj/a2VuYmF1ZXItbWVt/YmVyLW9mLXRoZS13/ZXN0LWdlcm1hbi1z/b2NjZXItdGVhbS13/aG8tbGF0ZXItc2ln/bmVkLWEtY29udHJh/Y3Qtd2l0aC10aGUu/anBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPTdxUWsz/S2NfYnU3eGZLMTRB/NXVtU2RMVHdyNUlG/dzd2SVZ3RUxDdUFf/SUk9',
        position: Offset(850, 200)),
    Jogador('Paolo Maldini', 'Zagueiro', 'https://imgs.search.brave.com/6Z0l4fhgzXXAsK8aAl3-NJnqAoe-2FuIYN0ZCWTXwNU/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzZmL2Yw/LzM0LzZmZjAzNDAw/ODZmNmJhNWMyNjFk/ZDAxNjRkMGYzOGEx/LmpwZw',
        position: Offset(750, 200)),
    Jogador('Roberto Carlos', 'Lateral-esquerdo', 'https://imgs.search.brave.com/6bKKK_HpUbrzPFoMXjX4_r8mZ2XUV21y8R4be3USzUc/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/YS50cmFuc2Zlcm1h/cmt0LnRlY2hub2xv/Z3kvcG9ydHJhaXQv/YmlnLzc1MTgtMTU5/NTMyMTgxNy5qcGc_/bG09MQ',
        position: Offset(850, 250)),
    Jogador('Zinedine Zidane', 'Meio-campista', 'https://imgs.search.brave.com/4CivWr2tBrwPCeXQy0d28S_93_m6J_HwWK5Il5l1Nv4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTY0/MDE4Mi9waG90by9h/LXBvcnRyYWl0LW9m/LXppbmVkaW5lLXpp/ZGFuZS1vZi1qdXZl/bnR1cy10YWtlbi1k/dXJpbmctdGhlLWNs/dWItcGhvdG9jYWxs/LW1hbmRhdG9yeS1j/cmVkaXQuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPTdxUWsz/S2NfYnU3eGZLMTRB/NXVtU2RMVHdyNUlG/dzd2SVZ3RUxDdUFf/SUk9',
        position: Offset(750, 250)),
    Jogador('Diego Maradona', 'Meio-campista', 'https://imgs.search.brave.com/vJiruOSgT9OcaL1qXKyxo98JeEvsVcNJoLaeTn0cPsU/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNjQ5/Njg5NTA2L3Bob3Rv/L21hcmNvcy1jYWZ1/LWFjLW1pbGFuLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz03/N0JZS0hVUjBRT3d2/WUNvUVdZbU9oZzZo/VmpMVEdPdWpJZUk5/WT0',
        position: Offset(850, 300)),
    Jogador('Pelé', 'Atacante', 'https://imgs.search.brave.com/Di8EkZ43GJN8dJ6dUfPLXz-RZdsvV45kFLZ9KccB-lE/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/YmxhY2tzcGFjZS5j/b20vaW1hZ2VzL0Ev/NC8yNC9Bc3NldHMt/b2YtUGVsZS1KYW1l/LnBuZz9jPTcwMGwz/ZGtjYjh1aWllcmlw/dGVzMjNlMXM5amtm/NXJsY3V6Mml1ajBz/MnBwc3o4dWJ3ZTly/czBkazI5cjZkYThj/cm8yanRzMnl6ZHN0/cTJqcDBlZzR3c2l5/cWExNTQwNjkzNTQz/NzU3MzZmMjU3Yjc4/MmZiMjJmMzNkZTVj/OTM0NTIuanBn',
        position: Offset(750, 300)),
    Jogador('Ronaldo Nazário', 'Atacante', 'https://imgs.search.brave.com/7uBYnr00ef9mmisYDm8TPwYWRcVZYzQ1rfM3HwUPUnw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg4L2Y0/L2YxLzg4ZjRmMTg5/NzZlYzZmN2ZmMTY1/OTQ3Y2I5OTY3NzA0/YjcyY2I1LmpwZz9z/PTYxMng2MTIm/dz0wJms9MjAmYz0w/N0o2YmJEUHhrQnRS/WmlmcmltaFFCWFhH/WFBWVjJ3MGVRRE09',
        position: Offset(850, 350)),
  ];

  void _movePlayer(int index, Offset offset, List<Jogador> time) {
    setState(() {
      time[index].position = offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Time de Futebol Interativo'),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://cdn.pixabay.com/photo/2016/11/21/17/29/soccer-1842727_1280.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            for (var jogador in timeEsquerda)
              Draggable(
                child: Image.network(
                  jogador.urlImagem,
                  width: 50,
                  height: 50,
                ),
                feedback: Image.network(
                  jogador.urlImagem,
                  width: 50,
                  height: 50,
                ),
                childWhenDragging: Container(),
                onDraggableCanceled: (_, offset) =>
                    _movePlayer(timeEsquerda.indexOf(jogador), offset, timeEsquerda),
                data: jogador,
              ),
            for (var jogador in timeDireita)
              Draggable(
                child: Image.network(
                  jogador.urlImagem,
                  width: 50,
                  height: 50,
                ),
                feedback: Image.network(
                  jogador.urlImagem,
                  width: 50,
                  height: 50,
                ),
                childWhenDragging: Container(),
                onDraggableCanceled: (_, offset) =>
                    _movePlayer(timeDireita.indexOf(jogador), offset, timeDireita),
                data: jogador,
              ),
            for (var jogador in timeEsquerda)
              AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                left: jogador.position.dx,
                top: jogador.position.dy,
                child: Draggable(
                  child: Image.network(
                    jogador.urlImagem,
                    width: 50,
                    height: 50,
                  ),
                  feedback: Image.network(
                    jogador.urlImagem,
                    width: 50,
                    height: 50,
                  ),
                  childWhenDragging: Container(),
                  onDraggableCanceled: (_, offset) =>
                      _movePlayer(timeEsquerda.indexOf(jogador), offset, timeEsquerda),
                  data: jogador,
                ),
              ),
            for (var jogador in timeDireita)
              AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                left: jogador.position.dx,
                top: jogador.position.dy,
                child: Draggable(
                  child: Image.network(
                    jogador.urlImagem,
                    width: 50,
                    height: 50,
                  ),
                  feedback: Image.network(
                    jogador.urlImagem,
                    width: 50,
                    height: 50,
                  ),
                  childWhenDragging: Container(),
                  onDraggableCanceled: (_, offset) =>
                      _movePlayer(timeDireita.indexOf(jogador), offset, timeDireita),
                  data: jogador,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

