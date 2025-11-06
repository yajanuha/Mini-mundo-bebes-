import 'package:flutter/material.dart';
import '../inicio.dart';
import 'notificaciones_page.dart';

class AjustesPage extends StatefulWidget {
  const AjustesPage({super.key});

  @override
  State<AjustesPage> createState() => _AjustesPageState();
}

class _AjustesPageState extends State<AjustesPage> {
  bool notificaciones = true;
  String idioma = 'Español';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes'),
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
              const SizedBox(height: 20),

              const Text(
                '⚙️ Configuración Personal',
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
                'Aquí puedes personalizar tu experiencia en Mini Mundo Bebés: '
                'ajusta tus preferencias, activa notificaciones y selecciona tu idioma preferido. 💜',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  height: 1.6,
                  color: Color(0xFF4A148C),
                ),
              ),
              const SizedBox(height: 30),

              // 🔔 Notificaciones
              SwitchListTile(
                title: const Text(
                  'Recibir notificaciones',
                  style: TextStyle(
                    color: Color(0xFF4A148C),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                value: notificaciones,
                onChanged: (value) {
                  setState(() {
                    notificaciones = value;
                  });
                },
                activeColor: const Color(0xFFBA68C8),
              ),
              const Divider(),

              // 🌎 Idioma
              ListTile(
                leading: const Icon(Icons.language, color: Color(0xFF7E57C2)),
                title: const Text(
                  'Idioma de la aplicación',
                  style: TextStyle(
                    color: Color(0xFF4A148C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  idioma,
                  style: const TextStyle(color: Color(0xFF6A1B9A)),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFFBA68C8),
                ),
                onTap: () {
                  _mostrarSelectorIdioma(context);
                },
              ),
              const Divider(),

              // 👶 Información del bebé
              ListTile(
                leading: const Icon(
                  Icons.child_friendly,
                  color: Color(0xFF7E57C2),
                ),
                title: const Text(
                  'Información del bebé',
                  style: TextStyle(
                    color: Color(0xFF4A148C),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text('Edad, nombre, fecha de nacimiento'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFFBA68C8),
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Próximamente podrás editar la información del bebé. 🍼',
                      ),
                      backgroundColor: Color(0xFFBA68C8),
                    ),
                  );
                },
              ),
              const Divider(),

              // 💾 Guardar cambios
              const SizedBox(height: 25),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('✅ Ajustes guardados correctamente'),
                      backgroundColor: Color(0xFF6A1B9A),
                    ),
                  );
                },
                icon: const Icon(Icons.save),
                label: const Text('Guardar cambios'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFBA68C8),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // 🔹 Botones navegación
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NotificacionesPage(),
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
                          builder: (context) => const InicioPage(),
                        ),
                      );
                    },
                    label: const Text('Inicio'),
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

  // 🌐 Selector de idioma
  void _mostrarSelectorIdioma(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text(
            'Seleccionar idioma',
            style: TextStyle(
              color: Color(0xFF4A148C),
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _idiomaOption('Español'),
              _idiomaOption('Inglés'),
              _idiomaOption('Portugués'),
            ],
          ),
        );
      },
    );
  }

  Widget _idiomaOption(String valor) {
    return RadioListTile<String>(
      title: Text(valor, style: const TextStyle(color: Color(0xFF4A148C))),
      value: valor,
      groupValue: idioma,
      onChanged: (nuevo) {
        setState(() {
          idioma = nuevo!;
        });
        Navigator.pop(context);
      },
      activeColor: const Color(0xFFBA68C8),
    );
  }
}
