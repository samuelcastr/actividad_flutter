import 'package:flutter/material.dart';

class ListaLibrosScreen extends StatelessWidget {
  const ListaLibrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final libros = [
      {
        "titulo": "Clean Code",
        "autor": "Robert Martin",
        "categoria": "Programación",
        "estado": "Disponible"
      },
      {
        "titulo": "Flutter Básico",
        "autor": "Juan Pérez",
        "categoria": "Tecnología",
        "estado": "Prestado"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Libros"),
      ),
      body: ListView.builder(
        itemCount: libros.length,
        itemBuilder: (context, index) {
          final libro = libros[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.book),
              title: Text(libro["titulo"]!),
              subtitle: Text(
                "Autor: ${libro["autor"]}\n"
                "Categoría: ${libro["categoria"]}\n"
                "Estado: ${libro["estado"]}",
              ),
            ),
          );
        },
      ),
    );
  }
}