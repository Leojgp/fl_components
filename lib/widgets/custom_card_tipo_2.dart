import 'package:flutter/material.dart';
class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
            Image(
            image: NetworkImage("https://free-3dtextureshd.com/wp-content/uploads/2024/06/45.jpg.webp")
            )
        ],
      ),
    );
  }
}