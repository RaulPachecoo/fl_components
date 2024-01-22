import '../theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text("Aqui va el titulo del card"),
            subtitle: Text("Irure cupidatat esse dolore laboris. Anim et duis deserunt irure sit laborum laboris tempor eu non ea. Deserunt velit occaecat esse proident esse amet laboris mollit."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){
            
                  }, 
                  child: const Text("Cancelar"),
                ),
                TextButton(
                  onPressed: (){
            
                  }, 
                  child: const Text("Aceptar")
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}