/* --------------------------------------------
Widget FloatingActionButton
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
          title: const Text('Widget FloatingActionButton'),
        ),
        /**
         * Pada widget Scaffold dapat ditambahkan property 'floatingActionButton'
         * method 'onPressed' digunakan untuk menangkap event tap pada widget FloatingActionButton
         * wrap widget 'FloatingActionButton' dengan widget 'Column' untuk membuat lebih dari 1 elemen 'FloatingActionButton'
         * set property 'mainAxisSize:MainAxisSize.min' untuk mengatur agar ukuran Column hanya seukuran widget didalamnya
         */
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                print('FloatingActionButton + is clicked !');
              },
              child: const Icon(
                Icons.add,
              ),
            ),
            const SizedBox(
              height: 2.0,
            ),
            FloatingActionButton(
              onPressed: () {
                print('FloatingActionButton - is clicked !');
              },
              child: const Icon(
                Icons.remove,
              ),
            ),
          ],
        ),
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
