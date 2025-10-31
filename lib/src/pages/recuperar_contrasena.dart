import 'package:flutter/material.dart';

class RecuperarContrasenaPage extends StatelessWidget {
  const RecuperarContrasenaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperar Contraseña"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: const Center(
        child: Text(
          "Pantalla para recuperar la contraseña.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
