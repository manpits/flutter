/* --------------------------------------------
Widget SafeArea
-----------------------------------------------*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Tanda ? pada String? textData = 'Testing null safety' berarti
/// variable 'textData' bisa null atau String
/// Bedakan antara null dengan String ""
String? textData = 'Testing null safety';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Null safety'),
        ),
        body: Center(
          /**
           * Tanda ! pada textData! untuk memastikan bahwa nilai textData tidak null
           * Jika nilai textData = null maka akan memunculkan error 
           */
          child: Text(textData!),
        ),
      ),
    );
  }
}
