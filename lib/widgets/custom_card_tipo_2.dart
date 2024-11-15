import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {

  final String imageURL;
  final String? nombre;
  const CustomCardTipo2({super.key, required this.imageURL, this.nombre});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
            FadeInImage(
            //image: NetworkImage("https://free-3dtextureshd.com/wp-content/uploads/2024/06/45.jpg.webp"),
            image: NetworkImage(imageURL),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 200,
            //fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 3000),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            child: Text( nombre ?? 'Desconocido'),
          )
        ],
      ),
    );
  }
}
