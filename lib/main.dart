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
         * Tambahkan widget Column sebagai child dari widget Drawer
         * Tambahkan widget DrawerHeader sebagai salah satu child dari widget Column
         * Tambahkan widget Expanded agar memenuhi ruang kosong dari widget Column
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
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Pengaturan'),
                    onTap: () {},
                  ),
                ],
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      color: Colors.black12,
                      height: 5,
                      thickness: 1.0,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
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
