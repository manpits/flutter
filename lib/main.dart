/* --------------------------------------------
* Widget Tree
* digunakan untuk mengelola aplikasi dengan beberapa halaman
-----------------------------------------------*/

import 'package:flutter/material.dart';
import 'package:flutter_003_empty/views/widget_tree.dart';
import 'package:flutter_003_empty/widgets/navbarwidget.dart';

void main() {
  runApp(const MyApp());
}

// Ubah menjadi StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget Tree'),
        ),
        body: const WidgetTree(),
        bottomNavigationBar: const NavbarWidget(),
      ),
    );
  }
}
