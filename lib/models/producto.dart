
import 'package:flutter/material.dart';

// Clase para guardar los datos de cada producto
class Producto {
  String nombre;
  String precio;
  String imagen;
  IconData icono;

  // Constructor del producto
  Producto({
    required this.nombre,
    required this.precio,
    required this.imagen,
    required this.icono,
  });
}

// Lista de productos de nuestra tienda
List<Producto> productos = [

  Producto(
    nombre: 'Auriculares',
    precio: '29,99 €',
    imagen: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500',
    icono: Icons.headphones,
  ),

  Producto(
    nombre: 'Reloj',
    precio: '49,99 €',
    imagen: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500',
    icono: Icons.watch,
  ),

  Producto(
    nombre: 'Camara',
    precio: '89,99 €',
    imagen: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500',
    icono: Icons.camera_alt,
  ),

  Producto(
    nombre: 'Mochila',
    precio: '24,99 €',
    imagen: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500',
    icono: Icons.backpack,
  ),

  Producto(
    nombre: 'Zapatillas',
    precio: '59,99 €',
    imagen: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500',
    icono: Icons.directions_run,
  ),

  Producto(
    nombre: 'Gafas',
    precio: '19,99 €',
    imagen: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=500',
    icono: Icons.remove_red_eye,
  ),

  Producto(
    nombre: 'Ordenador',
    precio: '599,99 €',
    imagen: 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500',
    icono: Icons.laptop,
  ),

  Producto(
    nombre: 'Telefono',
    precio: '399,99 €',
    imagen: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=500',
    icono: Icons.phone_android,
  ),

];
