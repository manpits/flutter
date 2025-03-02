/* --------------------------------------------
Widget Stateful 

Stateless : can't refresh
Stateful: can refresh 
setState : to refresh
-----------------------------------------------*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Gunakan StatefulWidget jika ingin membuat halaman dapat direfresh
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// variabel 'currentIndex' untuk menyimpan index dari BottomNavigationBar yang aktif saat ini
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget Stateful'),
        ),
        body: Center(
          /**
           * agar tulisan di Scaffold>body>text dinamis, title dari widget Text diambil dari variable 'currentIndex'
           */
          child: Text('Index saat ini : $currentIndex'),
        ),
        bottomNavigationBar: NavigationBar(
          /**
           * set property 'selectedIndex' dengan nilai pada variable 'currentIndex'
           */
          selectedIndex: currentIndex,

          /**
           * gunakan method 'onDestinationSelected' untuk menghandle perubahan pada 'bottomNavigationBar'
           */
          onDestinationSelected: (value) {
            /**
             * gunakan method setState() untuk merefresh layar
             */
            setState(() {
              /**
               * ubah nilai variable 'currentIndex' dengan nilai index element 'bottomNavigationBar' saat ini
               * dicek, jika index saat ini = 0, berarti yang ditap adalah Home
               */
              currentIndex = value;
            });
          },
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
        ),
      ),
    );
  }
}
