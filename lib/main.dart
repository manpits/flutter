/* --------------------------------------------
Widget Wrap
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
          title: const Text('Widget Stack'),
          leading: const Icon(Icons.person_2_outlined),
          actions: const [
            Icon(Icons.light_mode),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Text('Children dari widget Column ini '),
                Text('menggunakan widget Row, '),
                Text(
                    'jika tulisannya terlalu panjang maka akan terjadi overflow '),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                Text('Children dari widget Column ini '),
                Text('menggunakan widget Wrap, '),
                Text(
                    'jika tulisannya terlalu panjang maka tidak terjadi overflow namun akan diwrap ke bawah'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
