/* --------------------------------------------
Widget MAterialApp
-----------------------------------------------*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp bisa menggunakan ColorScheme
    final myColorScheme = ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.dark,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Set penggunaan ColorScheme pada property 'theme',
      theme: ThemeData(
        colorScheme: myColorScheme.copyWith(
          surface: myColorScheme.onPrimary,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: const Text('Pemrograman Flutter'),
      ),
    );
  }
}
