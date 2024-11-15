import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Alert Screen'),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.close),onPressed: () => Navigator.pop(context)),
    );
  }
}
