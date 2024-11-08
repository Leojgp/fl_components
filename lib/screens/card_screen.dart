import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.blueAccent,
      title: const Text(
        'Card Screen',
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}
