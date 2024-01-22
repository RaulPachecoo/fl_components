import 'package:flutter/material.dart';

class StarkScreen extends StatelessWidget{

  static const Color primary = Colors.white;

  const StarkScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STARK'),
        backgroundColor: primary,
        foregroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Insertar la imagen
          Image.asset(
            'assets/stark.jpg', // Ruta de la imagen en tu proyecto
            // Ajusta la altura según tus necesidades
          ),
          const SizedBox(height: 16), // Espaciador vertical

          // Breve descripción
          Container(
            margin: const EdgeInsets.all(8.0), // Margen aplicado al Container
            child: const Text(
              'La Casa Stark de Invernalia es una casa noble del Norte. Su asentamiento es Invernalia. Durante siglos, fue la casa principal del Norte y su linaje se extiende hasta los Primeros Hombres, gobernando el Norte como reyes por derecho propio. Su emblema es un lobo huargo de cenizo corriendo sobre campo de plata. Su lema es Se acerca el Invierno. Su mandoble ancestral de acero valyrio se llamaba Hielo.',
              style: TextStyle(
                fontSize: 18,
                color:Colors.grey, // Cambia el color del texto aquí
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),


      
    );
  }

}