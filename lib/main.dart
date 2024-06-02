import 'package:flutter/material.dart';
import 'package:flutter_restaurante_1/pantalla_inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PantallaInicio(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
