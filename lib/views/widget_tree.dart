import 'package:flutter/material.dart';
import 'package:flutter_003_empty/views/data/notifiers.dart';
import 'package:flutter_003_empty/views/pages/homepage.dart';
import 'package:flutter_003_empty/views/pages/profilepage.dart';
import 'package:flutter_003_empty/views/widgets/navbarwidget.dart';

List<Widget> pages = const [
  Homepage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedThemeNotifier,
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Method .adaptive'),
            actions: [
              IconButton(
                  onPressed: () {
                    selectedThemeNotifier.value = !selectedThemeNotifier.value;
                  },
                  icon: Icon(value ? Icons.light_mode : Icons.dark_mode))
            ],
          ),
          body: ValueListenableBuilder(
            valueListenable: selectedPageNotifier,
            builder: (context, value, child) {
              return pages.elementAt(value);
            },
          ),
          bottomNavigationBar: const NavbarWidget(),
        );
      },
    );
  }
}
