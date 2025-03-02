/* --------------------------------------------
Widget Container
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white60,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget Container'),
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Text(
                'Widget Container\n- height & width : full\n- margin : 30.0\n- padding : 10.0'),
          ),
        ),
      ),
    );
  }
}
