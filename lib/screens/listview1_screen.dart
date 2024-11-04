import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const['Targarian','Stark','Lannister','Baratheon'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1'),
        ),
        body: ListView(
          children: [
            ...options.map((e) => ListTile(
              leading: Icon(Icons.access_time_sharp),
              title: Text(e))).toList()
            /*
              ListTile(
              leading: Icon(Icons.access_time_sharp),
              title: Text('Hola Mundo'),
            )*/

          ],
        )
        );
  }
}
