import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text('Alerta'),
          // Para ponerle a la alerta el borde recto
          //shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(0)),
          content: const Text('Este es el contenido de mi alerta'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar')
            ),
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
         child: ElevatedButton(
          onPressed: () => displayDialog(context),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Mostrar Alerta', style: TextStyle(fontSize: 20),),
          ),
        )
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}