import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tema com Background Azul e Amarelo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          background: Colors.blue,
        ),
      ),
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Widget com tema global (azul)
          Container(
            width: 100,
            height: 100,
            color: Theme.of(context).colorScheme.background,
            child: const Center(child: Text('Widget Azul')),
          ),

          // Widget com tema local sobrescrito (amarelo)
          Theme(
            data: Theme.of(context).copyWith(
              colorScheme: Theme.of(context).colorScheme.copyWith(
                    background: Colors.yellow,
                  ),
            ),
            child: Builder(
              builder: (context) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Theme.of(context).colorScheme.background,
                  child: const Center(child: Text('Widget Amarelo')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
