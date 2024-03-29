import 'dart:math';
import 'package:flutter/material.dart';


class AnimatedScreen extends StatefulWidget {

   
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.lightGreenAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        
        child: const Icon(Icons.play_circle_outlined, size: 40,),
        onPressed: () {
          _width = Random().nextInt(300) + 20;
          _height = Random().nextInt(300) + 20;
          _color = Color.fromRGBO(Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1.0);
          setState(() {
          });
        },
      ),
    );
  }
}