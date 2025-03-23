import 'package:flutter/material.dart';
import '../models/login.dart';
import '../screens/home_screen.dart';
import '../widgets/form_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void realizarLogin(BuildContext context, String usuario, String senha) {
    Login login = Login(usuario: usuario, senha: senha);

    if (login.validar()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Usuário ou senha incorretos!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png",
                width: 100,
                height: 100), // Logo
            const SizedBox(height: 20),
            FormLogin(
                onLogin: (usuario, senha) =>
                    realizarLogin(context, usuario, senha)),
          ],
        ),
      ),
    );
  }
}
