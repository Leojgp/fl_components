import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(titulo: 'Prueba',),
          CustomCardTipo2(imageURL: 'https://hips.hearstapps.com/hmg-prod/images/iron-man-2-1554714458.jpg'),
          SizedBox(height: 10),
          CustomCardTipo2(imageURL: 'https://free-3dtextureshd.com/wp-content/uploads/2024/06/45.jpg.webp',nombre: 'Batman',),
          SizedBox(height: 10),
          CustomCardTipo2(imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Coq-gaulois-dore.JPG/640px-Coq-gaulois-dore.JPG',nombre: 'Gallo',),
          SizedBox(height: 10),
          CustomCardTipo2(imageURL: 'https://fotografias.antena3.com/clipping/cmsimages01/2019/11/18/4BEC0567-F127-42EB-B31D-56D4F327A157/98.jpg?crop=1125,633,x32,y0&width=1900&height=1069&optimize=high&format=webply',nombre: 'Thanos',),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
