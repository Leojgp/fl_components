import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InputScreen'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              //initialValue: 'Introduce tu nombre',
              textCapitalization: TextCapitalization.words,
              onChanged: (value){
                print('value ${value}');
              },
              validator: (value) {
                if(value!.length < 3){
                  return 'Mínimo 3 caracteres';
                }
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: 'Nombre y apellido',
                labelText: 'Nombre',
                helperText: 'Solo letras',
                //prefix: Icon(Icons.assignment_ind_outlined),
                // Icon te desplaza a la derecha las cosas para que el icono
                // no se muestre encima
                icon: Icon(Icons.assignment_ind_outlined),
                suffixIcon: Icon(Icons.person_2_outlined),
                border: OutlineInputBorder(
                  //borderRadius: BorderRadius.circular(10),
                  // El zero lo pone rectangular 
                  //borderRadius: BorderRadius.zero 
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  )
                )
              ),
            )
        ],),
      ),
    );
  }
}