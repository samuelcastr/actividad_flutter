import 'package:flutter/material.dart';
import 'detalle_evento_screen.dart';

class ListaEventosScreen extends StatelessWidget {
  const ListaEventosScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final eventos = [
      {
        "nombre": "Flutter Day",
        "fecha": "15/06/2026",
        "lugar": "Auditorio Principal",
        "duracion": "4 Horas",
        "tipo": "Taller"
      },
      {
        "nombre": "Hackathon SENA",
        "fecha": "20/06/2026",
        "lugar": "Biblioteca",
        "duracion": "8 Horas",
        "tipo": "Competencia"
      },
      {
        "nombre": "Inteligencia Artificial",
        "fecha": "28/06/2026",
        "lugar": "Sala TIC",
        "duracion": "3 Horas",
        "tipo": "Conferencia"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Eventos"),
      ),
      body: ListView.builder(
        itemCount: eventos.length,
        itemBuilder: (context, index) {

          final evento = eventos[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.event),
              title: Text(evento["nombre"]!),
              subtitle: Text(
                "${evento["fecha"]}\n${evento["tipo"]}",
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        DetalleEventoScreen(evento: evento),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}