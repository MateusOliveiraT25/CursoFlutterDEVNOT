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
  final List<Filme> filmesComedia = [
    Filme('As Branquelas', 'https://imgs.search.brave.com/K071tD_uqTux7yDpyy_Qy1DlinY1bSyhkHOoPK0H-98/rs:fit:500:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvcHQvdGh1bWIv/ZC9kZS9XaGl0ZV9j/aGlja3MuanBlZy81/MTJweC1XaGl0ZV9j/aGlja3MuanBlZw'),
    Filme('Se Beber, Não Case!', 'https://imgs.search.brave.com/dHPG7R_F6hqy-6JZrEhnPkZxvJJKfZv-V0W99ZB5pgE/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9ici53/ZWIuaW1nMy5hY3N0/YS5uZXQvY18zMDBf/MzAwL2ltZy81Ny8y/ZS81NzJlYmQ0M2M0/ZDU1MGQ3NDE2MjQ2/NzI5MWJiNDE0Zi5q/cGc'),
    Filme('O Máskara', 'https://imgs.search.brave.com/dQHeLy8WMTRLxIV8tLCdppXrYsb8PKDnSvCJAtsT0g8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvcHQvdGh1bWIv/Zi9mZS9UaGVtYWFz/ay5qcGcvNTEycHgt/VGhlbWFhc2suanBn'),
    Filme('Debi & Lóide', 'https://imgs.search.brave.com/PN41bjANUje_45mUg49DnRgZPnQXvMyI0AmMTRcZ8AQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvcHQvdGh1bWIv/NS81ZS9EdW1iX2Fu/ZF9EdW1iZXJfUCVD/MyVCNHN0ZXIuanBn/LzUxMnB4LUR1bWJf/YW5kX0R1bWJlcl9Q/JUMzJUI0c3Rlci5q/cGc')
  ];

  final List<Filme> filmesAcao = [
    Filme('Velozes e Furiosos', 'https://imgs.search.brave.com/4ZA2ClsG-jPqGcYdVQUs8c0vNyoQBvDVZtkdz_ZhqhI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9ici53/ZWIuaW1nMy5hY3N0/YS5uZXQvY18zMDBf/MzAwL21lZGlhcy9u/bWVkaWEvMTgvMzYv/MzEvMzgvMTg2NTQz/MzUuanBn'),
    Filme('Os Vingadores', 'https://imgs.search.brave.com/QQB9SmBpfXzWA6I3kfcmsXpjLDoCvqau0IzSCJ_7c1I/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9sdW1p/ZXJlLWEuYWthbWFp/aGQubmV0L3YxL2lt/YWdlcy9hdV9tYXJ2/ZWxfdGhlYXZlbmdl/cnNfaW5maW5pdHl3/YXJfbW92aWVfcG9z/dGVyXzBiZjFmMGQw/LmpwZWc_cmVnaW9u/PTEsMTY5LDUzOSw2/MDk'),
    Filme('Missão Impossível', 'https://example.com/missao_impossivel.jpg'),
    Filme('Duro de Matar', 'https://imgs.search.brave.com/EuLNyVEn9bVJPEUktctbq_IwF_WQMFKDYxl3fGb01FA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4u/ZG9vY2Euc3RvcmUv/MzIwL3Byb2R1Y3Rz/L2JkLWR1cm8tZGUt/bWF0YXItMl80NTB4/NjAwK2ZpbGxfZmZm/ZmZmLmpwZz92PTE2/MjIxMjIxNjUmd2Vi/cD0w')
  ];

  final List<Filme> filmesDrama = [
    Filme('Forrest Gump', 'https://example.com/forrest_gump.jpg'),
    Filme('O Poderoso Chefão', 'https://example.com/o_poderoso_chefao.jpg'),
    Filme('Titanic', 'https://example.com/titanic.jpg'),
    Filme('Cidade de Deus', 'https://example.com/cidade_de_deus.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // número de abas
      child: Scaffold(
        appBar: AppBar(
          title: Text('Página com Abas'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Comédia'),
              Tab(text: 'Ação'),
              Tab(text: 'Drama'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: filmesComedia.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
        width: 30, // largura da imagem
        height: 50, // altura da imagem
        child: Image.network(
          filmesComedia[index].imagem,
          fit: BoxFit.cover, // opção de ajuste da imagem
        ),
      ),
      title: Text(filmesComedia[index].titulo),
    );
  },
),
            ListView.builder(
              itemCount: filmesAcao.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
        width: 30, // largura da imagem
        height: 50, // altura da imagem
        child: Image.network(
          filmesComedia[index].imagem,
          fit: BoxFit.cover, // opção de ajuste da imagem
        ),
      ),
                  title: Text(filmesAcao[index].titulo),
                );
              },
            ),
            ListView.builder(
              itemCount: filmesDrama.length,
              itemBuilder: (context, index) {
                return ListTile(
                 leading: Container(
        width: 30, // largura da imagem
        height: 50, // altura da imagem
        child: Image.network(
          filmesComedia[index].imagem,
          fit: BoxFit.cover, // opção de ajuste da imagem
        ),
      ),
                  title: Text(filmesDrama[index].titulo),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Filme {
  final String titulo;
  final String imagem;

  Filme(this.titulo, this.imagem);
}
