import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ControlAsistenciaApp());
}

class ControlAsistenciaApp extends StatelessWidget {
  const ControlAsistenciaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Control de Asistencia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}