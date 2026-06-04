import 'package:flutter/material.dart';

class FormularioNovedadScreen extends StatefulWidget {
  const FormularioNovedadScreen({super.key});

  @override
  State<FormularioNovedadScreen> createState() =>
      _FormularioNovedadScreenState();
}

class _FormularioNovedadScreenState
    extends State<FormularioNovedadScreen> {

  final _formKey = GlobalKey<FormState>();

  final nombreController = TextEditingController();
  final fechaController = TextEditingController();
  final motivoController = TextEditingController();
  final instructorController = TextEditingController();

  void guardarNovedad() {
    if (_formKey.currentState!.validate()) {

      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Novedad registrada"),
          content: Text(
            "Aprendiz: ${nombreController.text}\n"
            "Fecha: ${fechaController.text}\n"
            "Instructor: ${instructorController.text}",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);

                nombreController.clear();
                fechaController.clear();
                motivoController.clear();
                instructorController.clear();
              },
              child: const Text("Aceptar"),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reportar Novedad"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              TextFormField(
                controller: nombreController,
                decoration: const InputDecoration(
                  labelText: "Nombre del aprendiz",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nombre obligatorio";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: fechaController,
                decoration: const InputDecoration(
                  labelText: "Fecha",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Fecha obligatoria";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: motivoController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: "Motivo",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.length < 10) {
                    return "Mínimo 10 caracteres";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: instructorController,
                decoration: const InputDecoration(
                  labelText: "Instructor",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: guardarNovedad,
                child: const Text("Registrar Novedad"),
              )
            ],
          ),
        ),
      ),
    );
  }
}