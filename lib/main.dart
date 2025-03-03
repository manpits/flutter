/* --------------------------------------------
* Checkbox Widget
-----------------------------------------------*/

import 'package:flutter/material.dart';
import 'package:flutter_003_empty/views/data/notifiers.dart';
import 'package:flutter_003_empty/views/widget_tree.dart';

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
          home: const WidgetTree(),
        );
      },
    );
  }
}
