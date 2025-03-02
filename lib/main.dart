/* --------------------------------------------
Widget SafeArea
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
          title: const Text('Widget SafeArea'),
        ),
        /**
         * Widget 'Drawer' kita dapat wrap dengan widget SafeArea
         * Widget SafeArea akan membuat widget yang kita buat tampilannya tidak melebihi bagian atas atau bagian bawah layar
         * Untuk melihat pengaruh widget SafeArea, coba jalankan aplikasi pada emulator Android atau ioS atau langsung pada perangkat mobile
         */
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Divider(
                        color: Colors.grey[0],
                        height: 5,
                        thickness: 0.5,
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
        ),
        body: const Center(
          child: Text('Widget SafeArea'),
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
