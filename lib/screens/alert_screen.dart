import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialog(BuildContext context){
    //print('He pulsado en mostrar alerta');
    showDialog(
      // Lo pongo a true, para que si toco furea de la alerta no se queda colgado, sino que se cierra
      barrierDismissible: true,
      context: context, 
      builder: (context){
        return AlertDialog(
          title: Text('Alerta'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: 
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido del mensaje alerta'),
              SizedBox(height: 10,),
              FlutterLogo( size: 100,),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Cerrar'))
          ],
        );
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () => displayDialog(context), 
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: const Text('Mostrar alerta', style: TextStyle(fontSize: 20)
          ),
        )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)),
    );
  }
}
