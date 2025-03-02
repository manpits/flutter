/* --------------------------------------------
Widget Divider dan VerticalDivider
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
          title: const Text('Widget Divider dan VerticalDivider'),
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.amber,
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
              ),
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
              ),
              /**
               * Widget Divider digunakan untuk membuat garis secara horizontal
               * Widget VerticalDivider digunakan untuk membuat garis secara vertical
               * Gunakan widget Expanded pada VerticalDivider untuk mengisi seluruh ruang kosong yang tersedia
               */
              const Divider(
                color: Colors.red,
              ),
              const Expanded(
                child: VerticalDivider(
                  color: Colors.amber,
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.teal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
