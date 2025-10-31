import 'package:flutter/material.dart';
import 'src/app.dart';
import 'src/pages/inicio.dart';
import 'src/pages/registro_padre.dart';
import 'src/pages/recuperar_contrasena.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Mundo Bebés',
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(), // login (de app.dart)
        '/registro': (context) => const RegistroPadrePage(),
        '/recuperar': (context) => const RecuperarContrasenaPage(),
        '/menu': (context) => const InicioPage(),
      },
    );
  }
}
