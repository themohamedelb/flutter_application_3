
import 'package:flutter/material.dart';

// Importamos el menu
import '../widgets/menu_lateral.dart';

// Importamos la pantalla principal
import 'inicio_page.dart';

// Pantalla del contador
class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  // Variable que guarda el numero de clics
  int contador = 0;

  // Funcion para sumar
  void incrementar() {
    setState(() {
      contador++;
    });
  }

  // Funcion para restar
  void decrementar() {
    setState(() {
      contador--;
    });
  }

  // Funcion para reiniciar
  void reiniciar() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Barra superior
      appBar: AppBar(
        title: const Text('Ejercicio contador'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      // Menu lateral
      drawer: MenuLateral(
        abrirInicio: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const InicioPage(),
            ),
          );
        },

        abrirContador: () {
          Navigator.pop(context);
        },
      ),

      // Contenido del contador
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Icono del contador
            const Icon(
              Icons.touch_app,
              size: 80,
              color: Colors.deepPurple,
            ),

            const SizedBox(height: 20),

            const Text(
              'Numero de clics',
              style: TextStyle(
                fontSize: 23,
              ),
            ),

            const SizedBox(height: 15),

            // Numero actual
            Text(
              '$contador',
              style: const TextStyle(
                fontSize: 65,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),

            const SizedBox(height: 30),

            // Boton para sumar
            SizedBox(
              width: 220,
              child: ElevatedButton.icon(
                onPressed: incrementar,
                icon: const Icon(Icons.add_circle),
                label: const Text('Incrementar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Boton para restar
            SizedBox(
              width: 220,
              child: ElevatedButton.icon(
                onPressed: decrementar,
                icon: const Icon(Icons.remove_circle),
                label: const Text('Decrementar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Boton para reiniciar
            SizedBox(
              width: 220,
              child: ElevatedButton.icon(
                onPressed: reiniciar,
                icon: const Icon(Icons.refresh),
                label: const Text('Poner a cero'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
