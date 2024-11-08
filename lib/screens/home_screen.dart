import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 67, 93, 137),
        title: const Text(
          'Componentes de Flutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.abc_outlined),
          title: const Text('Nombre de ruta'),
          onTap: () {
            //Navigator.push(context, route);
            // Push Replacement destruye la flecha para volver a la página anterior (para que no aparezca la flecha)
            Navigator.pushNamed(context, 'card');
          } 
        ),
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: 5,
      )
    );
  }
}
