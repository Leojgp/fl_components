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
          CustomCardTipo1(),
          CustomCardTipo2(imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgD3dC0sthaFod8DmzCZENQi5PcscXirIBOQ&s'),
          SizedBox(height: 10),
          CustomCardTipo2(imageURL: 'https://free-3dtextureshd.com/wp-content/uploads/2024/06/45.jpg.webp',nombre: 'Batman',),
          SizedBox(height: 10),
          CustomCardTipo2(imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Coq-gaulois-dore.JPG/640px-Coq-gaulois-dore.JPG',nombre: 'Gallo',),
          SizedBox(height: 10),
          CustomCardTipo2(imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkB-P1tBjEdoJ9X-xPevDUYVeZMJwyk1kejQ&s',),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
