import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.blueAccent,
      title: const Text(
        'Alert Screen',
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}
