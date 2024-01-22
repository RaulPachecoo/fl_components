import 'package:flutter/material.dart';

class TargaryenScreen extends StatelessWidget{

  static const Color primary = Colors.black;

  const TargaryenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TARGARYEN'),
        backgroundColor: primary,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Insertar la imagen
          Image.asset(
            'assets/targaryen.jpg', // Ruta de la imagen en tu proyecto
            // Ajusta la altura según tus necesidades
          ),
          const SizedBox(height: 16), // Espaciador vertical

          // Breve descripción
          Container(
            margin: const EdgeInsets.all(8.0), // Margen aplicado al Container
            child: const Text(
              'La Casa Targaryen es una casa noble de ascendencia Valyria que reinó durante casi trescientos años los Siete Reinos de Poniente. Sus asentamientos eran la capital del reino Desembarco del Rey, la isla de Rocadragón y el castillo de Refugio Estival. Su emblema es un dragón de tres cabezas de gules en campo sable, representando a Aegon I y sus hermanas Rhaenys y Visenya. Su lema es Fuego y Sangre y sus espadas ancestrales de acero valyrio, ambas en actual paradero desconocido, son Fuegoscuro y Hermana Oscura.',
              style: TextStyle(
                fontSize: 18,
                color:primary, // Cambia el color del texto aquí
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),


      
    );
  }

}