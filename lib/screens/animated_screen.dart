import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

// La barrabaja delante significa privado
class _AnimatedScreenState extends State<AnimatedScreen> {

// Todas estas propiedades son privadas.Barrabaja y el nombre de la propiedad:  _nombrePropiedad
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius  = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Container(
          height: _height,
          width: _width,
            decoration: BoxDecoration(
            //Si se usa border Radius, el color hay que meterlo, si no da error
            color: _color,
            borderRadius: _borderRadius
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle),
        onPressed: (){
          _width = Random().nextDouble()* 256;
          _height = Random().nextDouble()* 256;
          _color = Color.fromRGBO(Random().nextInt(200), Random().nextInt(200), Random().nextInt(200), 1);
          setState(() {
            
          });
        }
        ),
        );
  }
}