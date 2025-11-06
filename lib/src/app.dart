import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'pages/registro_padre.dart';
import 'pages/recuperar_contrasena.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    ImageProvider profileImage = kIsWeb
        ? const NetworkImage('assets/bebe.jpg')
        : const AssetImage('assets/images/bebe.jpg');

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFC0CB), Color(0xFF87CEFA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(25),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: screenWidth < 500 ? screenWidth : 400,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Imagen
                  CircleAvatar(radius: 90, backgroundImage: profileImage),
                  SizedBox(height: screenHeight * 0.02),
                  const Text(
                    "Mini Mundo Bebés",
                    style: TextStyle(
                      fontFamily: "NerkoOne",
                      fontSize: 36,
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  const Text(
                    "¡Bienvenido Padre o Madre!",
                    style: TextStyle(
                      fontFamily: "ComicNeue",
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.04),

                  // Email
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email, color: Colors.pinkAccent),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Password
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock, color: Colors.blueAccent),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Botón Login
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/menu');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth < 400 ? 80 : 100,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
<<<<<<< HEAD

                  // 🔹 Aquí añadimos el enlace de recuperación
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/recuperar');
                    },
                    child: const Text(
                      "¿Olvidaste tu contraseña?",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                      ),
                    ),
                  ),

=======
>>>>>>> ad56655cb9048a25f98269de8a951e102c9dc224
                  SizedBox(height: screenHeight * 0.02),

                  // Registro
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "¿No tienes cuenta?",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/registro');
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.yellowAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
