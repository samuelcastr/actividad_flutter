import 'package:flutter/material.dart';

class DetalleEventoScreen extends StatelessWidget {

  final Map<String, String> evento;

  const DetalleEventoScreen({
    super.key,
    required this.evento,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(evento["nombre"]!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                Text(
                  evento["nombre"]!,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Text("📅 Fecha: ${evento["fecha"]}"),
                Text("📍 Lugar: ${evento["lugar"]}"),
                Text("⏱ Duración: ${evento["duracion"]}"),
                Text("🎓 Tipo: ${evento["tipo"]}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}