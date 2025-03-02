/* --------------------------------------------
Widget Row
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
          title: const Text('Widget Row'),
        ),
        body: Container(
          color: Colors.grey,
          // -----------------------------------------------------------------
          // Aktifkan property width: double.infinity untuk melihat cara kerja
          // property 'crossAxisAlignment'
          // -----------------------------------------------------------------
          //height: double.infinity,
          //
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.amber,
                ),
                child: const Center(
                  child: Text('Container 1'),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text('Container 2'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
