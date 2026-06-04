import 'package:flutter/material.dart';

class ListaAprendicesScreen extends StatelessWidget {
  const ListaAprendicesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final aprendices = [
      {
        "nombre": "Juan Pérez",
        "ficha": "2876543",
        "estado": "Asistió"
      },
      {
        "nombre": "María López",
        "ficha": "2876543",
        "estado": "Llegó tarde"
      },
      {
        "nombre": "Carlos Gómez",
        "ficha": "2876543",
        "estado": "No asistió"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Aprendices"),
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (context, index) {

          final aprendiz = aprendices[index];

          IconData icono;
          Color color;

          switch (aprendiz["estado"]) {
            case "Asistió":
              icono = Icons.check_circle;
              color = Colors.green;
              break;

            case "Llegó tarde":
              icono = Icons.access_time;
              color = Colors.orange;
              break;

            default:
              icono = Icons.cancel;
              color = Colors.red;
          }

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(icono, color: color),
              title: Text(aprendiz["nombre"]!),
              subtitle: Text(
                "Ficha: ${aprendiz["ficha"]}\nEstado: ${aprendiz["estado"]}",
              ),
            ),
          );
        },
      ),
    );
  }
}