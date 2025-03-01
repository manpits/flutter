/* --------------------------------------------
Widget Icon
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
        /**
         *
         * */
        appBar: AppBar(
          title: const Text('Widget Stack'),
          leading: const Icon(Icons.person_2_outlined),
          actions: const [
            Icon(Icons.light_mode),
          ],
        ),
        body: Image.asset(
          'assets/images/bg.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
