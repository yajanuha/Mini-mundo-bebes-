import 'package:flutter/material.dart';

import 'actividades_page.dart';
import 'ajustes_page.dart';

class NotificacionesPage extends StatelessWidget {
  const NotificacionesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificaciones'),
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
              // 🔔 Imagen decorativa
              Image.asset(
                'assets/images/notificaciones_bebe.jpeg',
                height: 220,
              ),
              const SizedBox(height: 20),

              // 📢 Título
              const Text(
                '🔔 Notificaciones Importantes',
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
                'Aquí recibirás recordatorios y avisos importantes sobre el cuidado de tu bebé: '
                'controles médicos, vacunas, consejos y fechas especiales. 💜',
                style: TextStyle(
                  fontSize: 17,
                  height: 1.6,
                  color: Color(0xFF4A148C),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),

              // 💉 Tarjetas informativas
              infoCard(
                '💉 Vacunas y Controles',
                'Recuerda llevar a tu bebé al pediatra para sus controles regulares. '
                    'Las vacunas son esenciales para protegerlo de enfermedades. '
                    'Guarda un registro de sus dosis y revisa su carnet de salud. 🩺',
              ),
              infoCard(
                '🕒 Horarios de Sueño',
                'Recuerda mantener rutinas estables: los bebés necesitan entre 11 y 14 horas de sueño al día. '
                    'Un descanso adecuado mejora su humor y su desarrollo cognitivo. 🌙',
              ),
              infoCard(
                '🥗 Nuevos Consejos Semanales',
                'Cada semana recibirás tips de alimentación, juegos y bienestar. '
                    'Activa tus notificaciones para no perderte nada nuevo. 💡',
              ),
              infoCard(
                '🧠 Desarrollo y Estimulación',
                'Te avisaremos cuando sea buen momento para introducir nuevas actividades de aprendizaje '
                    'según la edad de tu bebé. 🎨',
              ),

              const SizedBox(height: 25),

              const Text(
                '💡 Consejo: Estar informada y mantener una rutina organizada ayuda a tu bebé '
                'a sentirse seguro, amado y saludable. ❤️',
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
                          builder: (context) => const ActividadesPage(),
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
                          builder: (context) => const AjustesPage(),
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

  // 🌟 Widget tarjeta informativa
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
