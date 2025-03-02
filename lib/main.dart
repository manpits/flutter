/* --------------------------------------------
Tipe data dalam bahasa pemrograman Dart
-----------------------------------------------*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Beberapa jenis tipe data bahasa pemrograman DART
String name = "Pemrograman Mobile dengan Framework UI Flutter";
int bulat = 10;
double desimal = 99.3;
bool kondisi = false;
List array = ["Satu", "Dua", "Tiga"];

Map<String, String> mapStringToString = {
  "Satu": "One",
  "Dua": "Two",
  "Tiga": "Three",
};

Map<String, int> mapStringToInteger = {
  "Satu": 1,
  "Dua": 2,
  "Tiga": 3,
};

Map<String, dynamic> mapStringToDynamic = {
  "Satu": "One",
  "Dua": 2,
  "Tiga": 3.0,
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Debug banner diset false
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tipe Data Dart'),
        ),
        body: Text(name),
      ),
    );
  }
}
