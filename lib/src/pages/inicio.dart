import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mini Mundo Bebés',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFBA68C8),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      // Menú lateral
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/fondo.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: const AssetImage(
                        'assets/images/bebuqui.jpeg',
                      ),
                      backgroundColor: Colors.white.withOpacity(0.8),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Mini Mundo Bebés',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 3,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 🏠 Inicio
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFF7E57C2)),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // 👶 Etapas del Bebé
            ListTile(
              leading: const Icon(
                Icons.baby_changing_station,
                color: Color(0xFF7E57C2),
              ),
              title: const Text('Etapas del Bebé'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EtapasBebePage(),
                  ),
                );
              },
            ),

            // 🍎 Alimentación Saludable
            ListTile(
              leading: const Icon(Icons.restaurant, color: Color(0xFF7E57C2)),
              title: const Text('Alimentación Saludable'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AlimentacionPage(),
                  ),
                );
              },
            ),

            // 💡 Actividades y Juegos
            ListTile(
              leading: const Icon(Icons.toys, color: Color(0xFF7E57C2)),
              title: const Text('Actividades y Juegos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ActividadesPage(),
                  ),
                );
              },
            ),

            // 🔔 Notificaciones
            ListTile(
              leading: const Icon(
                Icons.notifications,
                color: Color(0xFF7E57C2),
              ),
              title: const Text('Notificaciones'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificacionesPage(),
                  ),
                );
              },
            ),

            // ⚙️ Ajustes
            ListTile(
              leading: const Icon(Icons.settings, color: Color(0xFF7E57C2)),
              title: const Text('Ajustes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AjustesPage()),
                );
              },
            ),

            // 🚪 Cerrar sesión
            ListTile(
              leading: const Icon(Icons.logout, color: Color(0xFF7E57C2)),
              title: const Text('Cerrar sesión'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (r) => false);
              },
            ),
          ],
        ),
      ),

      // Fondo degradado 💜💙
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE1BEE7), Color(0xFFBBDEFB)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              '👶💜 ¡Bienvenido a Mini Mundo Bebés! 💙\n\n'
              'Explora consejos, juegos y cuidados para niños de 1 a 3 años.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A148C),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

// ---------- PANTALLAS SECUNDARIAS ----------

class EtapasBebePage extends StatelessWidget {
  const EtapasBebePage({super.key});

  @override
  Widget build(BuildContext context) {
    return pantallaBase(
      context: context,
      titulo: 'Etapas del Bebé',
      contenido:
          'Información sobre las etapas del bebé (1 a 3 años).\nAprende cómo crece y qué habilidades desarrolla.',
      anterior: const InicioPage(),
      siguiente: const AlimentacionPage(),
    );
  }
}

class AlimentacionPage extends StatelessWidget {
  const AlimentacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return pantallaBase(
      context: context,
      titulo: 'Alimentación Saludable',
      contenido:
          'Consejos sobre comidas nutritivas y saludables para bebés.\n¡Descubre recetas fáciles y deliciosas!',
      anterior: const EtapasBebePage(),
      siguiente: const ActividadesPage(),
    );
  }
}

class ActividadesPage extends StatelessWidget {
  const ActividadesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return pantallaBase(
      context: context,
      titulo: 'Actividades y Juegos',
      contenido:
          'Juegos divertidos y educativos para estimular el aprendizaje de tu bebé.',
      anterior: const AlimentacionPage(),
      siguiente: const NotificacionesPage(),
    );
  }
}

class NotificacionesPage extends StatelessWidget {
  const NotificacionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return pantallaBase(
      context: context,
      titulo: 'Notificaciones',
      contenido:
          'Aquí recibirás recordatorios importantes sobre vacunas, controles médicos,\n'
          'y nuevos consejos para el cuidado y desarrollo de tu bebé. 🍼💖',
      anterior: const ActividadesPage(),
      siguiente: const AjustesPage(),
    );
  }
}

class AjustesPage extends StatelessWidget {
  const AjustesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return pantallaBase(
      context: context,
      titulo: 'Ajustes',
      contenido:
          'Configura tu perfil, idioma y preferencias de la aplicación según tus necesidades.',
      anterior: const NotificacionesPage(),
      siguiente: const InicioPage(), // para cerrar el ciclo
    );
  }
}

// ---------- WIDGET BASE PARA PANTALLAS ----------
Widget pantallaBase({
  required BuildContext context,
  required String titulo,
  required String contenido,
  required Widget anterior,
  required Widget siguiente,
}) {
  return Scaffold(
    appBar: AppBar(
      title: Text(titulo),
      backgroundColor: const Color(0xFFBA68C8),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE1BEE7), Color(0xFFBBDEFB)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              contenido,
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xFF4A148C),
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => anterior),
                    );
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Atrás'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFBA68C8),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => siguiente),
                    );
                  },
                  label: const Text('Siguiente'),
                  icon: const Icon(Icons.arrow_forward),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFBA68C8),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
