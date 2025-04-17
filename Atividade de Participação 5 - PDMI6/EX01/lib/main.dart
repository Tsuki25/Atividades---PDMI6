import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeria de Jogos',
      debugShowCheckedModeBanner: false,
      home: const GameGallery(),
    );
  }
}

class GameGallery extends StatelessWidget {
  const GameGallery({super.key});

  final List<Map<String, String>> games = const [
    {
      'title': 'Valorant',
      'image': 'assets/images/valorant.jpg',
    },
    {
      'title': 'The Last of Us',
      'image': 'assets/images/the_last_of_us.png',
    },
    {
      'title': 'Zelda: BOTW',
      'image': 'assets/images/zelda_botw.jpg',
    },
    {
      'title': 'Eastward',
      'image': 'assets/images/eastward.jpg',
    },
    {
      'title': 'Elden Ring',
      'image': 'assets/images/elden_ring.jpg',
    },
    {
      'title': 'Cyberpunk 2077',
      'image': 'assets/images/cyberpunk.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jogos em Destaque')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: games.map((game) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  game['image']!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black54, Colors.transparent],
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: Text(
                  game['title']!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    shadows: [Shadow(blurRadius: 4, color: Colors.black)],
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
