import 'package:flutter/material.dart';


class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage('https://gamechampionsstorage.blob.core.windows.net/media/9606/fifa-24-release-date-of-ea-fc-24.png'), 
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            child: const Text('FC 24'))
        ],
      ),
    );
  }
}