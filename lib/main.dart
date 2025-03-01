/* --------------------------------------------
1. Import library material.dart
2. Buat function 
  void main() {
    runApp(const MyApp)
  }

3. Buat sebuah stateless widget dengan nama 'MyApp'
4. Pada method build dari widget 'MyApp', lakukan return widget 'MaterialApp'
5. Tempatkan widget Scaffold pada property 'home' dari widget 'MaterialApp'
6. Widget Scaffold memiliki properti 'appBar', coba isikan dengan sebuah widget AppBar
7. Widget Scaffold memiliki properti 'body', coba isikan dengan sebuah widget Text
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: const Text('My first app'),
      ),
    );
  }
}
