/* --------------------------------------------
Widget Wrap
-----------------------------------------------*/

import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: const Text('Widget Wrap'),
          leading: const Icon(Icons.person_2_outlined),
          actions: const [
            Icon(Icons.light_mode),
          ],
        ),
        body: const Column(
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

            /**
             * Widget Wrap dapat digunakan untuk melakukan wrapping jika tampilan widget secara horizontal
             * melewati ukuran lebar layar sehingga tidak terjadi overflow
             * */
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
