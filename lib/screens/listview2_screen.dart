import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
  final images = const ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRskqSQvxuVqecVFOQF0pARK9K5J0VX5ryqBQ&s','https://i0.wp.com/xn--lacompaialibredebraavos-yhc.com/wp-content/uploads/2017/05/House-Stark-HBO.jpeg?fit=1024%2C663&ssl=1','https://i0.wp.com/xn--lacompaialibredebraavos-yhc.com/wp-content/uploads/2017/06/Game-of-Thrones-House-Lannister-Sigils-Wallpaper.jpg?fit=1024%2C663&ssl=1','https://images5.fanpop.com/image/photos/29900000/House-a-song-of-ice-and-fire-29965901-1920-1080.jpg'];
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CasasScreen(casa: casa,url: url,),
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

  const CasasScreen({Key? key, required this.casa, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Casa $casa'),
      ),
      body: ListView(children:  [
        CustomCardTipo2(
            imageURL: url,nombre: casa,),
      ]),
    );
  }
}
