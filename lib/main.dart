/* --------------------------------------------
Widget Column
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
          title: Text('Widget Image'),
        ),
        /**
         * download gambar dari internet, misalnya 'bg.jpg'
         * simpan gambar 'bg.jpg' ke folder 'assets/image'
         * edit 'pubspec.yaml' , tambahkan
         *  flutter:
         *    ...
         *    assets:
         *      - assets/images/
         * 
         *  Wrap widget Image dengan widget Container untuk melihat cara kerja property 'fit'
         */
        body: Container(
          color: Colors.white30,
          height: double.infinity,
          child: Image.asset(
            'assets/images/bg.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
