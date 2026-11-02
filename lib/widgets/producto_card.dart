
import 'package:flutter/material.dart';

// Importamos los datos del producto
import '../models/producto.dart';

// Tarjeta para mostrar los productos
class ProductoCard extends StatelessWidget {

  // Recibimos un producto
  final Producto producto;

  const ProductoCard({
    super.key,
    required this.producto,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      clipBehavior: Clip.antiAlias,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Imagen del producto
          Expanded(
            child: Image.network(
              producto.imagen,
              width: double.infinity,
              fit: BoxFit.cover,

              // Mostramos un icono si falla la imagen
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.deepPurple.shade50,
                  width: double.infinity,
                  child: Icon(
                    producto.icono,
                    size: 65,
                    color: Colors.deepPurple,
                  ),
                );
              },
            ),
          ),

          // Nombre e icono del producto
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [

                Icon(
                  producto.icono,
                  color: Colors.deepPurple,
                  size: 20,
                ),

                const SizedBox(width: 6),

                Expanded(
                  child: Text(
                    producto.nombre,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),

          // Precio
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              bottom: 10,
            ),
            child: Text(
              producto.precio,
              style: const TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
