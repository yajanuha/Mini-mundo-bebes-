import 'package:flutter/material.dart';
import '../inicio.dart';
import 'alimentacion_page.dart';
import 'notificaciones_page.dart';
import 'pantalla_base.dart';

class ActividadesPage extends StatelessWidget {
  const ActividadesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actividades y Juegos'),
        backgroundColor: const Color(0xFFBA68C8),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF3E5F5), Color(0xFFE3F2FD)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // 🧸 Imagen decorativa principal
              Image.asset('assets/images/actividades_bebe.jpeg', height: 220),
              const SizedBox(height: 20),

              // 🎨 Título
              const Text(
                '🎨 Actividades y Juegos para tu Bebé',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A148C),
                  shadows: [
                    Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 3,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              const Text(
                'El juego es una herramienta mágica para el desarrollo de tu bebé. '
                'A través de las actividades, mejora su coordinación, lenguaje y habilidades sociales. 💜',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.6,
                  color: Color(0xFF4A148C),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),

              // 🌼 Tarjetas informativas
              infoCard(
                '🧩 Juegos Sensoriales',
                'Crea una bandeja con objetos seguros de diferentes texturas: telas suaves, esponjas o juguetes de goma. '
                    'Esto estimula el tacto, la curiosidad y la coordinación mano-ojo.',
              ),
              infoCard(
                '🎵 Juegos Musicales',
                'Cántale, toca palmas o usa instrumentos pequeños. '
                    'La música estimula el lenguaje y las emociones positivas. 🥁',
              ),
              infoCard(
                '🏃‍♀️ Actividades Motoras',
                'Coloca cojines o túneles para que el bebé gatee o camine entre ellos. '
                    'Fortalece su equilibrio y motricidad gruesa mientras se divierte.',
              ),
              infoCard(
                '📚 Cuentos y Colores',
                'Leerle todos los días refuerza su atención y su imaginación. '
                    'Elige libros con imágenes grandes y colores vivos. 🌈',
              ),

              // 🎲 NUEVA SECCIÓN: Juego educativo
              const SizedBox(height: 20),
              Image(
                image: AssetImage('assets/images/juegos_colores.jpeg'),
                height: 200,
              ),
              const SizedBox(height: 10),
              infoCard(
                '🎲 Juego para niños de 2 a 3 años',
                '👶 “Encuentra el Tesoro de Colores” 🌈\n\n'
                    'Coloca diferentes objetos de colores en una caja (bloques, peluches, tapas, etc.). '
                    'Pídele al niño que busque un color específico, por ejemplo: “¡Encuentra algo rojo!”. '
                    'Este juego estimula la atención, el reconocimiento de colores y la motricidad fina. 🎨',
              ),

              const SizedBox(height: 25),

              const Text(
                '💡 Consejo: No necesitas juguetes costosos. Los momentos de juego con amor y atención '
                'son los que realmente fortalecen su desarrollo emocional y cognitivo. 💞',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF6A1B9A),
                ),
              ),

              const SizedBox(height: 35),

              // 🔹 Botones navegación
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AlimentacionPage(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Atrás'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBA68C8),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificacionesPage(),
                        ),
                      );
                    },
                    label: const Text('Siguiente'),
                    icon: const Icon(Icons.arrow_forward),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBA68C8),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🌟 Tarjeta informativa reutilizable
  Widget infoCard(String titulo, String texto) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(2, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6A1B9A),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            texto,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF4A148C),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
