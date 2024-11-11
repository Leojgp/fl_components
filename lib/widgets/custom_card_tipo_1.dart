import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text('Título de la tarjeta'),
            subtitle: Text('Eiusmod dolore cillum in consequat ex. Irure adipisicing Lorem veniam sint aliquip. Sint sunt commodo Lorem sunt nulla. Et eu dolor occaecat cillum ex sint incididunt aliquip enim consectetur velit.'
            ),
          )
        ],
      ),
    );
  }
}