
import 'package:flutter/material.dart';
import 'pages/inicio_page.dart';

// Funcion principal de la aplicacion
void main() {
  runApp(const MyApp());
}

// Clase principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Quitamos la etiqueta DEBUG
      debugShowCheckedModeBanner: false,

      // Nombre de nuestra aplicacion
      title: 'Mi Tienda',

      // Colores principales
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),

      // Primera pantalla
      home: const InicioPage(),
    );
  }
}
