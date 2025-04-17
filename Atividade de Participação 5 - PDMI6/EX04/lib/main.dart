import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layout',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'Arial',
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ),
      ),
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final List<String> linguagens = ['Dart', 'JavaScript', 'PHP', 'C++'];

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final bool isMobile = largura < 600; // retrato (coluna)

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Layouts'),
        centerTitle: true,
      ),
      body: isMobile
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildTituloEBotoes(),
                  const SizedBox(height: 20),
                  ...linguagens.map((linguagem) => _buildItemLista(linguagem)),
                ],
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: _buildTituloEBotoes()),
                const VerticalDivider(color: Colors.white),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: linguagens
                        .map((linguagem) => _buildItemLista(linguagem))
                        .toList(),
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildTituloEBotoes() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Cheetah Coding',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(onPressed: () {}, child: Text('BUTTON 1')),
        const SizedBox(height: 10),
        ElevatedButton(onPressed: () {}, child: Text('BUTTON 2')),
      ],
    );
  }

  Widget _buildItemLista(String texto) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        texto,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
