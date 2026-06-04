import 'package:flutter/material.dart';

class FormularioLibroScreen extends StatefulWidget {
  const FormularioLibroScreen({super.key});

  @override
  State<FormularioLibroScreen> createState() =>
      _FormularioLibroScreenState();
}

class _FormularioLibroScreenState
    extends State<FormularioLibroScreen> {

  final _formKey = GlobalKey<FormState>();

  final tituloController = TextEditingController();
  final autorController = TextEditingController();
  final categoriaController = TextEditingController();
  final anioController = TextEditingController();

  void registrarLibro() {
    if (_formKey.currentState!.validate()) {

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Registro exitoso"),
          content: Text(
            "Libro registrado:\n\n"
            "Título: ${tituloController.text}\n"
            "Autor: ${autorController.text}\n"
            "Categoría: ${categoriaController.text}\n"
            "Año: ${anioController.text}",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);

                tituloController.clear();
                autorController.clear();
                categoriaController.clear();
                anioController.clear();
              },
              child: const Text("Aceptar"),
            ),
          ],
        ),
      );
    }
  }

  @override
  void dispose() {
    tituloController.dispose();
    autorController.dispose();
    categoriaController.dispose();
    anioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrar Libro"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              TextFormField(
                controller: tituloController,
                decoration: const InputDecoration(
                  labelText: "Título del libro",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El título es obligatorio";
                  }

                  if (value.length < 3) {
                    return "Mínimo 3 caracteres";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: autorController,
                decoration: const InputDecoration(
                  labelText: "Autor",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El autor es obligatorio";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: categoriaController,
                decoration: const InputDecoration(
                  labelText: "Categoría",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "La categoría es obligatoria";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: anioController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Año de publicación",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "El año es obligatorio";
                  }

                  if (value.length != 4) {
                    return "Debe tener 4 dígitos";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: registrarLibro,
                  child: const Text(
                    "Registrar Libro",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}