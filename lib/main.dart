/* --------------------------------------------
* Split Widget
* Agar pada saat pemanggilan method setstate() , tidak keseluruhan layar direfresh
* namun hanya bagian yang merupakan widget StatefullWidget saja 
-----------------------------------------------*/

import 'package:flutter/material.dart';
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
          title: const Text('Split Widget'),
        ),
        body: const Center(
          child: Text(''),
        ),
        /**
         * 
         *  Buat folder 'lib/widgets'
         *  Buatlah sebuah file di 'lib/widgets/navbarwidget.dart'
         *  Buatlah StatefillWidget pada file 'lib/widgets/navbarwidget.dart'
         *  Split widget NavigationBar kedalam file tersebut
         * 
         */
        bottomNavigationBar: const NavbarWidget(),
      ),
    );
  }
}
