import 'package:flutter/material.dart';

class ResumenScreen extends StatelessWidget {
  const ResumenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resumen de Asistencia"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                title: const Text("Asistieron"),
                subtitle: const Text("20 Aprendices"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.access_time,
                  color: Colors.orange,
                ),
                title: const Text("Llegaron tarde"),
                subtitle: const Text("5 Aprendices"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.cancel,
                  color: Colors.red,
                ),
                title: const Text("No asistieron"),
                subtitle: const Text("2 Aprendices"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}