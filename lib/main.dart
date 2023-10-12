import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormularioPage(),
    );
  }
}

class FormularioPage extends StatefulWidget {
  const FormularioPage({super.key});

  @override
  FormularioPageState createState() => FormularioPageState();
}

class FormularioPageState extends State<FormularioPage> {
  final _formKey = GlobalKey<FormState>();
  String nombreYApellido = '';
  String edad = '';
  String hobbies = '';
  String ciudad = '';
  String comidaFavorita = '';

  void _mostrarMensaje() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          content: Text(
            'Tu nombre es $nombreYApellido, tienes $edad años, tus hobbies son $hobbies, vives en $ciudad y tu comida favorita es $comidaFavorita.',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cerrar'),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nombre y Apellido'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce tu nombre y apellido';
                  }
                  return null;
                },
                onSaved: (value) => nombreYApellido = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Edad'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce tu edad';
                  }
                  return null;
                },
                onSaved: (value) => edad = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Hobbies'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce tus hobbies';
                  }
                  return null;
                },
                onSaved: (value) => hobbies = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Ciudad'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce tu ciudad';
                  }
                  return null;
                },
                onSaved: (value) => ciudad = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Comida Favorita'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce tu comida favorita';
                  }
                  return null;
                },
                onSaved: (value) => comidaFavorita = value!,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: _mostrarMensaje,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Ver Mensaje'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
