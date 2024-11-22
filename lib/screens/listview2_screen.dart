import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.blueAccent,
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                title: Text(options[index]),
                onTap: () {
                  final casa = options[index];
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CasasScreen(casa: casa),
                    ),
                  );
                }),
            // Cada vez que itere en options pondrá un divider
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}

class CasasScreen extends StatelessWidget {
  final String casa;

  const CasasScreen({Key? key, required this.casa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Casa $casa'),
      ),
      body: Center(
        child: Text(
          'Bienvenido a la casa $casa',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
