import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const['Targaryen','Stark','Lannister','Baratheon'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => Text(options[index]), 
          // Cada vez que itere en options pondrá un divider
          separatorBuilder: (context, index) => const Divider(), 
          itemCount: options.length
          )
        );
  }
}
