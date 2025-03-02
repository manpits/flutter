/* --------------------------------------------
Widget Navigation Bar
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
          title: const Text('Widget NavigationBar'),
        ),
        /**
         * Pada widget Scaffold dapat ditambahkan property 'bottomNavigationBar'
         * property 'destinations' berupa list yang MINIMAL/HARUS memiliki paling tidak 2 (dua) element
         * property 'selectedIndex' digunakan untuk menentukan elemen mana yang sedang aktif
         * method 'onDestinationSelected' digunakan untuk menangkap event index dari element yang ditap 
         */
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedIndex: 1,
          onDestinationSelected: (value) {
            print(value);
          },
        ),
      ),
    );
  }
}
