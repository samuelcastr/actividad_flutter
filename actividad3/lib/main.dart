import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const EventosAcademicosApp());
}

class EventosAcademicosApp extends StatelessWidget {
  const EventosAcademicosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eventos Académicos',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomeScreen(),
    );
  }
}