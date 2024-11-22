import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  final String? titulo;
  final String? texto;
  const CustomCardTipo1({super.key,this.texto, this.titulo,});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
           ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text(titulo ?? 'Título de la tarjeta'),
            subtitle: Text(texto ?? 'Eiusmod dolore cillum in consequat ex. Irure adipisicing Lorem veniam sint aliquip. Sint sunt commodo Lorem sunt nulla. Et eu dolor occaecat cillum ex sint incididunt aliquip enim consectetur velit.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextButton(onPressed: () {}, child: Text('Aceptar')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
