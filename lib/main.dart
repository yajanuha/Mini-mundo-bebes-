import 'package:flutter/material.dart';

// Importa tus pantallas principales
import 'src/app.dart'; // Pantalla de inicio de sesión (login)
import 'src/pages/inicio.dart';
import 'src/pages/registro_padre.dart';
import 'src/pages/recuperar_contrasena.dart';

// Importa las páginas del menú (por si quieres navegarlas directamente)
import 'src/pages/menu/etapas_page.dart';
import 'src/pages/menu/alimentacion_page.dart';
import 'src/pages/menu/actividades_page.dart';
import 'src/pages/menu/notificaciones_page.dart';
import 'src/pages/menu/ajustes_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Mundo Bebés',

      // 🔹 Ruta inicial: tu login (Homepage)
      initialRoute: '/',

      routes: {
        '/': (context) => const Homepage(), // 💜 Login principal
        '/registro': (context) => const RegistroPadrePage(),
        '/recuperar': (context) => const RecuperarContrasenaPage(),

        // 💫 Menú principal con barra lateral
        '/menu': (context) => const InicioPage(),

        // 🌸 Páginas del menú (opcional, por si quieres navegarlas sin MaterialPageRoute)
        '/etapas': (context) => const EtapasBebePage(),
        '/alimentacion': (context) => const AlimentacionPage(),
        '/actividades': (context) => const ActividadesPage(),
        '/notificaciones': (context) => const NotificacionesPage(),
        '/ajustes': (context) => const AjustesPage(),
      },
    );
  }
}
