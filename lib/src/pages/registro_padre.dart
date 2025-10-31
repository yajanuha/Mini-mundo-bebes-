import 'package:flutter/material.dart';

class RegistroPadrePage extends StatefulWidget {
  const RegistroPadrePage({super.key});

  @override
  State<RegistroPadrePage> createState() => _RegistroPadrePageState();
}

class _RegistroPadrePageState extends State<RegistroPadrePage> {
  final _formKey = GlobalKey<FormState>();

  // Controladores
  final TextEditingController _nombresController = TextEditingController();
  final TextEditingController _apellidosController = TextEditingController();
  final TextEditingController _cedulaController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _contrasenaController = TextEditingController();

  // Variables para los selectores
  String? _sexoSeleccionado;
  String? _estadoCivilSeleccionado;
  bool _recibeBono = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de Padres'),
        backgroundColor: const Color.fromARGB(255, 42, 202, 125),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Ingrese sus datos personales:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Nombres
              TextFormField(
                controller: _nombresController,
                decoration: const InputDecoration(
                  labelText: 'Nombres',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese sus nombres' : null,
              ),
              const SizedBox(height: 16),

              // Apellidos
              TextFormField(
                controller: _apellidosController,
                decoration: const InputDecoration(
                  labelText: 'Apellidos',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese sus apellidos' : null,
              ),
              const SizedBox(height: 16),

              // Cédula
              TextFormField(
                controller: _cedulaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Cédula',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese su cédula' : null,
              ),
              const SizedBox(height: 16),

              // Teléfono
              TextFormField(
                controller: _telefonoController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Teléfono',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese su teléfono' : null,
              ),
              const SizedBox(height: 16),

              // Correo electrónico
              TextFormField(
                controller: _correoController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese su correo electrónico' : null,
              ),
              const SizedBox(height: 16),

              // Contraseña
              TextFormField(
                controller: _contrasenaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese una contraseña' : null,
              ),
              const SizedBox(height: 16),

              // Sexo
              DropdownButtonFormField<String>(
                value: _sexoSeleccionado,
                decoration: const InputDecoration(
                  labelText: 'Sexo',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(
                    value: 'Masculino',
                    child: Text('Masculino'),
                  ),
                  DropdownMenuItem(value: 'Femenino', child: Text('Femenino')),
                ],
                onChanged: (value) {
                  setState(() {
                    _sexoSeleccionado = value;
                  });
                },
                validator: (value) =>
                    value == null ? 'Seleccione su sexo' : null,
              ),
              const SizedBox(height: 16),

              // Estado civil
              DropdownButtonFormField<String>(
                value: _estadoCivilSeleccionado,
                decoration: const InputDecoration(
                  labelText: 'Estado Civil',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: 'Soltero', child: Text('Soltero')),
                  DropdownMenuItem(value: 'Casado', child: Text('Casado')),
                  DropdownMenuItem(
                    value: 'Divorciado',
                    child: Text('Divorciado'),
                  ),
                  DropdownMenuItem(value: 'Viudo', child: Text('Viudo')),
                  DropdownMenuItem(
                    value: 'Unión libre',
                    child: Text('Unión libre'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _estadoCivilSeleccionado = value;
                  });
                },
                validator: (value) =>
                    value == null ? 'Seleccione su estado civil' : null,
              ),
              const SizedBox(height: 16),

              // Bono
              SwitchListTile(
                title: const Text('¿Recibe bono?'),
                value: _recibeBono,
                onChanged: (value) {
                  setState(() {
                    _recibeBono = value;
                  });
                },
              ),
              const SizedBox(height: 30),

              // Botón Registrar
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Registro completado con éxito 🎉'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 42, 202, 125),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
