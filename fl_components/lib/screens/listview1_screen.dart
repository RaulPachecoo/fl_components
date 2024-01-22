import 'targaryen_screen.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';


class ListView1Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Baratheon'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (e) => ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              title: Text(e),
              onTap: () {
                // Navegar a la pantalla TargaryenScreen cuando se selecciona "Targaryen"
                if (e == 'Targaryen') {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const TargaryenScreen(),
                    ),
                  );
                } else if(e == 'Stark'){
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const StarkScreen(),
                    ),
                  );

                }else if(e == 'Lannister'){
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) =>  const LannisterScreen(),
                    ),
                  );
                }else if(e == 'Baratheon'){
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) =>  const BaratheonScreen(),
                    ),
                  );
                }
              },
            ),
          ).toList()
        ],
      ),
    );
  }
}

