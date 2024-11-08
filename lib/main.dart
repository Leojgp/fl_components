import 'package:fl_components/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const Listview2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      // Controla la excepción de si se escribe una ruta mal nos lleve a ua ruta por defecto
      onGenerateRoute: AppRoutes.onGenerateRoute);
  }
}
