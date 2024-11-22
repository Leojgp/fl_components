import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
  final images = const [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRskqSQvxuVqecVFOQF0pARK9K5J0VX5ryqBQ&s',
    'https://i0.wp.com/xn--lacompaialibredebraavos-yhc.com/wp-content/uploads/2017/05/House-Stark-HBO.jpeg?fit=1024%2C663&ssl=1',
    'https://i0.wp.com/xn--lacompaialibredebraavos-yhc.com/wp-content/uploads/2017/06/Game-of-Thrones-House-Lannister-Sigils-Wallpaper.jpg?fit=1024%2C663&ssl=1',
    'https://images5.fanpop.com/image/photos/29900000/House-a-song-of-ice-and-fire-29965901-1920-1080.jpg'
  ];
  final contenidoCasas = const [
    'La Casa Targaryen es una casa noble de ascendencia Valyria que reinó durante casi trescientos años los Siete Reinos de Poniente. Sus asentamientos eran la capital del reino Desembarco del Rey, la isla de Rocadragón y el castillo de Refugio Estival. Su emblema es un dragón de tres cabezas de gules en campo sable, representando a Aegon I y sus hermanas Rhaenys y Visenya. Su lema es Fuego y Sangre[4] y sus espadas ancestrales de acero valyrio, ambas en actual paradero desconocido, son Fuegoscuro y Hermana Oscura.',
    'La Casa Stark de Invernalia es una casa noble del Norte. Su asentamiento es Invernalia. Durante siglos, fue la casa principal del Norte y su linaje se extiende hasta los Primeros Hombres, gobernando el Norte como reyes por derecho propio. Su emblema es un lobo huargo de cenizo corriendo sobre campo de plata.[1] Su lema es Se acerca el Invierno.[2][3] Su mandoble ancestral de acero valyrio se llamaba Hielo.',
    'La Casa Lannister de Roca Casterly es la principal casa noble de las Tierras del Oeste. Su asentamiento es Roca Casterly. Su emblema es un león rampante de oro sobre campo de gules.[1][2] Su lema es ¡Oye mi Rugido!, aunque su lema no oficial, Un Lannister siempre paga sus deudas, es más conocido.',
    'La Casa Baratheon de Bastión de Tormentas es una casa noble de las Tierras de la Tormenta. Su asentamiento es Bastión de Tormentas, que fue residencia de la Casa Durrandon, los antiguos Reyes de la Tormenta. Su emblema es un venado coronado de sable sobre campo de oro.[1][2] Su lema es Nuestra es la Furia.'
  ];
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
                  final url = images[index];
                  final contenido = contenidoCasas[index];
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CasasScreen(
                        casa: casa,
                        url: url,
                        contenido: contenido,
                      ),
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
  final String url;
  final String contenido;

  const CasasScreen(
      {Key? key,
      required this.casa,
      required this.url,
      required this.contenido})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Casa $casa'),
      ),
      body: ListView(children: [
        CustomCardTipo2(
          imageURL: url,
          nombre: casa,
        ),
        CustomCardTipo1(
          titulo: 'Información de la casa $casa',
          texto: contenido,
        ),
      ]),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.close), onPressed: () => Navigator.pop(context)),
    );
  }
}
