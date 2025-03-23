import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  final void Function(String, String) onLogin;

  const FormLogin({super.key, required this.onLogin});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: usuarioController,
          decoration: const InputDecoration(labelText: "Usuário"),
        ),
        TextField(
          controller: senhaController,
          decoration: const InputDecoration(labelText: "Senha"),
          obscureText: true,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            widget.onLogin(usuarioController.text, senhaController.text);
          },
          child: const Text("Login"),
        ),
      ],
    );
  }
}
