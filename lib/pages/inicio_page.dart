
import 'package:flutter/material.dart';

// Importamos los productos
import '../models/producto.dart';

// Importamos los widgets
import '../widgets/menu_lateral.dart';
import '../widgets/producto_card.dart';

// Importamos la pantalla del contador
import 'contador_page.dart';

// Pantalla principal de nuestra tienda
class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Barra superior
      appBar: AppBar(
        title: const Text(
          'Mi Tienda',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,

        // Icono de la tienda
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),

      // Menu lateral
      drawer: MenuLateral(
        abrirInicio: () {
          Navigator.pop(context);
        },

        abrirContador: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContadorPage(),
            ),
          );
        },
      ),

      // Contenido de la pantalla
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Titulo de bienvenida
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '¡Bienvenido a nuestra tienda!',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Barra de busqueda visual
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar productos...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Fila de informacion
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Column(
                    children: [
                      Icon(
                        Icons.local_shipping,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      Text('Envio gratis'),
                    ],
                  ),

                  Column(
                    children: [
                      Icon(
                        Icons.discount,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      Text('Ofertas'),
                    ],
                  ),

                  Column(
                    children: [
                      Icon(
                        Icons.security,
                        color: Colors.deepPurple,
                        size: 30,
                      ),
                      Text('Compra segura'),
                    ],
                  ),

                ],
              ),
            ),

            const SizedBox(height: 25),

            // Banner de ofertas
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ofertas especiales',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text('Descubre nuestros productos'),
                      ],
                    ),
                  ),

                  Icon(
                    Icons.shopping_bag,
                    size: 55,
                    color: Colors.deepPurple,
                  ),

                ],
              ),
            ),

            const SizedBox(height: 20),

            // Titulo de las categorias
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Categorias',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Lista horizontal de categorias
            SizedBox(
              height: 105,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  categoria('Tecnologia', Icons.computer),
                  categoria('Ropa', Icons.checkroom),
                  categoria('Deporte', Icons.sports_soccer),
                  categoria('Hogar', Icons.chair),
                  categoria('Accesorios', Icons.watch),
                  categoria('Fotografia', Icons.camera_alt),
                  categoria('Telefonia', Icons.phone_android),

                ],
              ),
            ),

            const SizedBox(height: 20),

            // Titulo de productos
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    Icons.grid_view,
                    color: Colors.deepPurple,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Nuestros productos',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Cuadricula de productos
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),

              // Cantidad de productos
              itemCount: productos.length,

              // Dos columnas
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),

              // Creamos las tarjetas
              itemBuilder: (context, index) {
                return ProductoCard(
                  producto: productos[index],
                );
              },
            ),

            const SizedBox(height: 20),

            // Pie de pagina
            const Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Gracias por visitar nuestra tienda',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  // Funcion para crear las categorias
  Widget categoria(String nombre, IconData icono) {
    return Container(
      width: 115,
      margin: const EdgeInsets.all(5),

      // Fondo y bordes
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: BorderRadius.circular(12),
      ),

      // Organizamos el icono y el texto en columna
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Icono de la categoria
          Icon(
            icono,
            color: Colors.deepPurple,
            size: 32,
          ),

          const SizedBox(height: 5),

          // Nombre de la categoria
          Text(
            nombre,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}
