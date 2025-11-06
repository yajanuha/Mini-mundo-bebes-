import 'package:flutter/material.dart';

<<<<<<< HEAD
class RecuperarContrasenaPage extends StatefulWidget {
  const RecuperarContrasenaPage({super.key});

  @override
  State<RecuperarContrasenaPage> createState() =>
      _RecuperarContrasenaPageState();
}

class _RecuperarContrasenaPageState extends State<RecuperarContrasenaPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
=======
class RecuperarContrasenaPage extends StatelessWidget {
  const RecuperarContrasenaPage({super.key});

  @override
>>>>>>> ad56655cb9048a25f98269de8a951e102c9dc224
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperar Contraseña"),
        backgroundColor: Colors.pinkAccent,
      ),
<<<<<<< HEAD
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Ingresa tu correo electrónico y te enviaremos instrucciones para restablecer tu contraseña:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            // Campo de correo electrónico
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Correo electrónico",
                prefixIcon: const Icon(Icons.email, color: Colors.pinkAccent),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 25),

            // Botón para enviar enlace
            ElevatedButton(
              onPressed: () {
                final email = _emailController.text.trim();

                if (email.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Por favor, ingresa tu correo electrónico.",
                      ),
                      backgroundColor: Colors.redAccent,
                    ),
                  );
                  return;
                }

                // Aquí podrías llamar a tu backend o Firebase para enviar el correo
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Se envió un enlace de recuperación a $email",
                    ),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text(
                "Enviar enlace",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),

            const SizedBox(height: 30),

            // Botón para volver al login
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Volver al inicio de sesión",
                style: TextStyle(
                  color: Colors.pinkAccent,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
=======
      body: const Center(
        child: Text(
          "Pantalla para recuperar la contraseña.",
          style: TextStyle(fontSize: 18),
>>>>>>> ad56655cb9048a25f98269de8a951e102c9dc224
        ),
      ),
    );
  }
}
