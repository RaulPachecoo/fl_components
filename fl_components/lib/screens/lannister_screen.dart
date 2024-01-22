import 'package:flutter/material.dart';

class LannisterScreen extends StatelessWidget{

  static const Color primary = Colors.red;

  const LannisterScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LANNISTER'),
        backgroundColor: primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Insertar la imagen
          Image.asset(
            'assets/lannister.jpg', // Ruta de la imagen en tu proyecto
            // Ajusta la altura según tus necesidades
          ),
          const SizedBox(height: 16), // Espaciador vertical

          // Breve descripción
          Container(
            margin: const EdgeInsets.all(8.0), // Margen aplicado al Container
            child: const Text(
              'La Casa Lannister de Roca Casterly es la principal casa noble de las Tierras del Oeste. Su asentamiento es Roca Casterly. Su emblema es un león rampante de oro sobre campo de gules. Su lema es ¡Oye mi Rugido!, aunque su lema no oficial, Un Lannister siempre paga sus deudas, es más conocido.',
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