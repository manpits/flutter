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
         * 
         */
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                print('FloatingActionButton + is clicked !');
              },
              child: Icon(
                Icons.add,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            FloatingActionButton(
              onPressed: () {
                print('FloatingActionButton - is clicked !');
              },
              child: Icon(
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
