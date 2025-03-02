/* --------------------------------------------
Theme pada MaterialApp
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

      // Set penggunaan ColorScheme pada property 'theme',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Theme pada MaterialApp'),
        ),
        body: const Text('Gunakan ThemeData > ColorScheme'),
      ),
    );
  }
}
