import 'package:flutter/material.dart';
import 'menu/etapas_page.dart';
import 'menu/alimentacion_page.dart';
import 'menu/actividades_page.dart';
import 'menu/notificaciones_page.dart';
import 'menu/ajustes_page.dart';

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

            // 🍎 Alimentación
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

            // 💡 Actividades
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: AssetImage('assets/images/bienvenida.jpeg'),
                  height: 160,
                ),
                SizedBox(height: 25),
                Text(
                  '👶💜 ¡Bienvenida/o a Mini Mundo Bebés! 💙',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A148C),
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 6,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Tu espacio tierno y confiable para aprender, jugar y disfrutar junto a tu pequeño.\n\n'
                  'Aquí encontrarás consejos útiles, recetas saludables, actividades divertidas y recordatorios importantes.\n\n'
                  '🌸 Explora este mundo hecho con amor, dedicado a acompañarte en cada etapa del crecimiento de tu bebé.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.6,
                    color: Color(0xFF4A148C),
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 4,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
