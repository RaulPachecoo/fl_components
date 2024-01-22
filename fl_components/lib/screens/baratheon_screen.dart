import 'package:flutter/material.dart';

class BaratheonScreen extends StatelessWidget{

  static const Color primary = Colors.yellow;

  const BaratheonScreen({super.key});

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BARATHEON'),
        backgroundColor: primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Insertar la imagen
          Image.asset(
            'assets/baratheon.jpg', // Ruta de la imagen en tu proyecto
            // Ajusta la altura según tus necesidades
          ),
          const SizedBox(height: 16), // Espaciador vertical
        
          // Breve descripción
          Container(
            margin: const EdgeInsets.all(8.0), // Margen aplicado al Container
            child: const Text(
              'La Casa Baratheon de Bastión de Tormentas es una casa noble de las Tierras de la Tormenta. Su asentamiento es Bastión de Tormentas, que fue residencia de la Casa Durrandon, los antiguos Reyes de la Tormenta. Su emblema es un venado coronado de sable sobre campo de oro.[1][2] Su lema es Nuestra es la Furia.',
              style: TextStyle(
                fontSize: 18,
                color: primary, // Cambia el color del texto aquí
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),


      
    );
  }

}