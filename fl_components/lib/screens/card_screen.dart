import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';



class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://gamechampionsstorage.blob.core.windows.net/media/9606/fifa-24-release-date-of-ea-fc-24.png', nombre: "FC24",),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://cdn2.unrealengine.com/blade-2560x1440-2560x1440-d4e556fb8166.jpg', nombre: "FORTNITE",),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://www.callofduty.com/content/dam/atvi/callofduty/cod-touchui/blog/hero/mwiii/MWIII-REVEAL-FULL-TOUT.jpg', nombre: "MODERN WARFARE",),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://cdn.cloudflare.steamstatic.com/steam/apps/1326470/capsule_616x353.jpg?t=1697048131', nombre: "SONS OF THE FOREST",),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://i.blogs.es/0b4541/gta6/500_333.jpeg', nombre: "GTA VI",),
        ],
      )
    );
  }
}

