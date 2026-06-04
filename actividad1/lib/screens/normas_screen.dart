import 'package:flutter/material.dart';

class NormasScreen extends StatelessWidget {
  const NormasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Normas de Préstamo"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          '''
1. Los libros deben devolverse en 15 días.
2. No se permite dañar los libros.
3. Máximo 3 préstamos por usuario.
          ''',
        ),
      ),
    );
  }
}