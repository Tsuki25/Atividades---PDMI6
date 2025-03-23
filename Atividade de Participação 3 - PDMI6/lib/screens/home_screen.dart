import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bem-vindo!")),
      body: const Center(
        child: Text("Login realizado com sucesso!",
            style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
