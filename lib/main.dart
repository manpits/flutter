/* --------------------------------------------
Disable debug banner

Widget MaterialApp memiliki property 'debugShowCheckedModeBanner' yang bisa diset false untuk menonaktifkan debug banner
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
      //Debug banner diset false
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Disable Debug Banner'),
        ),
        body: const Text('debugShowCheckedModeBanner : false'),
      ),
    );
  }
}
