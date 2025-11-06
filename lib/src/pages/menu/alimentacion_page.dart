import 'package:flutter/material.dart';
import '../inicio.dart';
import 'etapas_page.dart';
import 'actividades_page.dart';
import 'pantalla_base.dart';

class AlimentacionPage extends StatelessWidget {
  const AlimentacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alimentación Saludable'),
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
              // 🥣 Imagen decorativa
              Image.asset('assets/images/alimentacion_bebe.jpeg', height: 220),
              const SizedBox(height: 20),

              // 🍼 Título
              const Text(
                '🍎 Alimentación Saludable del Bebé',
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
                'Durante los primeros años de vida, una buena alimentación es esencial para el crecimiento y desarrollo del bebé. '
                'Aquí encontrarás consejos para introducir alimentos y mantener una dieta equilibrada. 💜',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.6,
                  color: Color(0xFF4A148C),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),

              infoCard(
                '🍼 Lactancia Materna',
                'La leche materna es el alimento más completo. Se recomienda mantenerla exclusiva hasta los 6 meses. '
                    'Aporta defensas, vitaminas y fortalece el vínculo entre madre e hijo.',
              ),
              infoCard(
                '🥣 Alimentación Complementaria',
                'A partir de los 6 meses, puedes introducir purés suaves, papillas de frutas y verduras. '
                    'Evita la sal, el azúcar y alimentos muy procesados.',
              ),
              infoCard(
                '🍓 Consejos Saludables',
                'Ofrece alimentos variados, coloridos y ricos en nutrientes. '
                    'Permite que el bebé explore los sabores y texturas. ¡Comer también puede ser divertido! 😋',
              ),

              const SizedBox(height: 25),

              const Text(
                '💡 Consejo: No fuerces la comida. Cada bebé tiene su propio apetito. '
                'Lo importante es ofrecer amor, paciencia y una alimentación con cariño. 🌸',
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
                          builder: (context) => const EtapasBebePage(),
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
                          builder: (context) => const ActividadesPage(),
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
