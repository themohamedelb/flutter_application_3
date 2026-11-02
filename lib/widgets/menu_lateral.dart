
import 'package:flutter/material.dart';

// Menu lateral de la aplicacion
class MenuLateral extends StatelessWidget {

  // Funciones para cambiar de pantalla
  final VoidCallback abrirInicio;
  final VoidCallback abrirContador;

  const MenuLateral({
    super.key,
    required this.abrirInicio,
    required this.abrirContador,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          // Cabecera del menu
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

                // Icono de la tienda
                Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                  size: 50,
                ),

                SizedBox(height: 10),

                Text(
                  'Mi Tienda',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  'Entrega 3 Flutter',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),

          // Opcion para ir al inicio
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.deepPurple,
            ),
            title: const Text('Inicio'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: abrirInicio,
          ),

          // Opcion para ir al contador
          ListTile(
            leading: const Icon(
              Icons.calculate,
              color: Colors.deepPurple,
            ),
            title: const Text('Ejercicio contador'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: abrirContador,
          ),

          const Divider(),

          // Informacion adicional
          const ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Entrega 3'),
            subtitle: Text('Proyecto realizado con Flutter'),
          ),

        ],
      ),
    );
  }
}
