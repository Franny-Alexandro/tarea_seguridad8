import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/imagen8.jpg'), // Asegúrate de tener esta imagen en la carpeta assets
            ),
            const SizedBox(height: 16.0),
            const Text('Nombre: Franny Alexandro'),
            const Text('Apellido: Pinales Frias'),
            const Text('Matrícula: 2022-0314'),
            const SizedBox(height: 16.0),
            const Text(
              'Reflexión: La seguridad es nuestra máxima prioridad y nuestro deber es proteger a la comunidad con discreción y eficacia.',
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
