/* --------------------------------------------
Widget Drawer
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
      theme: ThemeData(brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget Drawer'),
        ),
        /**
         * Pada widget Scaffold dapat ditambahkan property 'drawer' dengan widget 'Drawer' untuk menempatkan semacam sidebar menu
         */
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/bg.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Text('Menu Utama'),
                  ],
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Profile'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Pengaturan'),
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
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
