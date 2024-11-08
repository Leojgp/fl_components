import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Componentes de Flutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.MenuOptions[index].icon),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: () {
            //Navigator.push(context, route);
            // Push Replacement destruye la flecha para volver a la página anterior (para que no aparezca la flecha)
            Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
          } 
        ),
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: AppRoutes.MenuOptions.length,
      )
    );
  }
}
