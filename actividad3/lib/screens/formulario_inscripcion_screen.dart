import 'package:flutter/material.dart';

class FormularioInscripcionScreen extends StatefulWidget {
  const FormularioInscripcionScreen({super.key});

  @override
  State<FormularioInscripcionScreen> createState() =>
      _FormularioInscripcionScreenState();
}

class _FormularioInscripcionScreenState
    extends State<FormularioInscripcionScreen> {

  final _formKey = GlobalKey<FormState>();

  final nombreController = TextEditingController();
  final correoController = TextEditingController();
  final documentoController = TextEditingController();
  final programaController = TextEditingController();

  void inscribirParticipante() {

    if (_formKey.currentState!.validate()) {

      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Inscripción Exitosa"),
          content: Text(
            "Participante: ${nombreController.text}\n"
            "Programa: ${programaController.text}",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);

                nombreController.clear();
                correoController.clear();
                documentoController.clear();
                programaController.clear();
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
        title: const Text("Inscripción"),
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
                  labelText: "Nombre",
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
                controller: correoController,
                decoration: const InputDecoration(
                  labelText: "Correo",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {

                  if (value == null ||
                      !value.contains("@") ||
                      !value.contains(".")) {
                    return "Correo inválido";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: documentoController,
                decoration: const InputDecoration(
                  labelText: "Documento",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {

                  if (value == null ||
                      value.length < 6) {
                    return "Mínimo 6 caracteres";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: programaController,
                decoration: const InputDecoration(
                  labelText: "Programa de Formación",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: inscribirParticipante,
                  child: const Text(
                    "Inscribirse",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}