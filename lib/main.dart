/* --------------------------------------------
Widget Stack
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
          title: Text('Widget Stack'),
        ),
        /**
         * Umumnya sebuah widget memiliki child, namun jika widget tidak memiliki child, kita bisa menambahkan
         * widget Stack, untuk menampilkan widget diatasnya
         * Sebagai contoh, widget Image tidak memiliki child, sehingga kita bisa menggunakan widget Stack untuk
         * menampilkan widget Text diatasnya
         * Tambahkan widget Container untuk mengatur posisi tampilan widget Text diatas widget Image
         */
        body: Stack(children: [
          Image.asset(
            'assets/images/bg.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: 50.0,
            color: Colors.teal,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This text is stacked over image !'),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
