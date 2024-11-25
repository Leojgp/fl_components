import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Avatar'),
    actions: const [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          child: Text('LJ'),
          backgroundColor: Colors.white54,
        ),
      )
    ],
    ),
    body: Center(
      child: CircleAvatar(
        maxRadius: 120,
        backgroundImage: NetworkImage('https://fotografias.antena3.com/clipping/cmsimages02/2019/04/11/B63C29B9-EA40-4F04-B6B8-B875B8E6CAB2/98.jpg?crop=1200,675,x0,y0&width=1900&height=1069&optimize=high&format=webply')
        ),
    ),
    );
  }
}