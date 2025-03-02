/* --------------------------------------------
* Penggantian Light / Dark Theme
-----------------------------------------------*/

import 'package:flutter/material.dart';
import 'package:flutter_003_empty/views/data/notifiers.dart';
import 'package:flutter_003_empty/views/widget_tree.dart';
import 'package:flutter_003_empty/views/widgets/navbarwidget.dart';

void main() {
  runApp(const MyApp());
}

// Ubah menjadi StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedThemeNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData(brightness: value ? Brightness.dark : Brightness.light),
          home: ValueListenableBuilder(
            valueListenable: selectedThemeNotifier,
            builder: (context, value, child) {
              return Scaffold(
                appBar: AppBar(
                  title: value ? Text('Mode Malam') : Text('Mode Siang'),
                  actions: [
                    IconButton(
                        onPressed: () {
                          selectedThemeNotifier.value =
                              !selectedThemeNotifier.value;
                        },
                        icon: Icon(value ? Icons.light_mode : Icons.dark_mode))
                  ],
                ),
                body: const WidgetTree(),
                bottomNavigationBar: const NavbarWidget(),
              );
            },
          ),
        );
      },
    );
  }
}
