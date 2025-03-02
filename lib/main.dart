/* --------------------------------------------
Widget ListTile
-----------------------------------------------*/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        /**
         * Widget ListTile memiliki property 'leading', 'title' dan 'trailing' yang bisa diguakan untuk menampilkan widget lain
         * method 'onTap' dapat digunakan untuk menangkap event yang terjadi ketika ListTile di tap pada layar
         * */
        appBar: AppBar(
          title: const Text('Widget ListTile'),
          leading: const Icon(Icons.person_2_outlined),
          actions: const [
            Icon(Icons.light_mode),
          ],
        ),
        body: ListTile(
          tileColor: Colors.red,
          leading: const Icon(Icons.accessibility),
          title: const Text('List Tile 1'),
          trailing: const Text('Trailing Text'),
          onTap: () {
            print('ListTile is tapped !');
          },
        ),
      ),
    );
  }
}
