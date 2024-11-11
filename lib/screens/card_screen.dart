import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/custom_card_tipo_1.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: [
          CustomCardTipo1()
        ],
      ),
    );
  }
}

