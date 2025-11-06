import 'package:flutter/material.dart';
import '../inicio.dart';
import 'alimentacion_page.dart';
import 'pantalla_base.dart';

class EtapasBebePage extends StatelessWidget {
  const EtapasBebePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etapas del Bebé'),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 🌸 Imagen decorativa
              Image.asset('assets/images/etapas_del_bebe.jpeg', height: 220),
              const SizedBox(height: 20),

              // 🍼 Título principal
              const Text(
                '👶 Etapas del Desarrollo del Bebé (0 a 3 años)',
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
                'Cada bebé crece a su propio ritmo, pero todos atraviesan etapas llenas de descubrimientos. '
                'Aquí aprenderás cómo acompañar su desarrollo físico, emocional y cognitivo desde los primeros días de vida. 💜',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.6,
                  color: Color(0xFF4A148C),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // 🌼 Etapas del crecimiento
              infoCard(
                '🍼 0 a 6 meses',
                'Tu bebé reconoce sonidos, rostros y comienza a emitir sus primeras sonrisas. '
                    'Háblale con dulzura, cántale y estimula su vista con colores suaves y objetos móviles.',
              ),
              infoCard(
                '🦋 6 a 12 meses',
                'Comienza a gatear y a explorar el entorno. Coloca juguetes de distintos tamaños y texturas para que los alcance. '
                    'Motívalo con palabras y gestos de alegría cuando logre algo nuevo.',
              ),
              infoCard(
                '🌷 1 a 3 años',
                'Tu pequeño ya camina, balbucea y aprende palabras nuevas. '
                    'Dedícale tiempo para jugar, leer cuentos y reforzar sus primeras habilidades sociales.',
              ),
              const SizedBox(height: 25),

              // 💡 Consejo
              const Text(
                '💡 Consejo: El amor, las caricias y la paciencia son la mejor forma de estimular su desarrollo. '
                'No compares su ritmo con el de otros bebés. Cada uno tiene su propio tiempo para brillar. 🌟',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF6A1B9A),
                ),
              ),

              const SizedBox(height: 35),

              // 🔹 Botones de navegación
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InicioPage(),
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
                          builder: (context) => const AlimentacionPage(),
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

  // 🌟 Widget de tarjeta informativa reutilizable
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
