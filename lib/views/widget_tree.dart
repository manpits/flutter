import 'package:flutter/material.dart';
import 'package:flutter_003_empty/views/data/notifiers.dart';
import 'package:flutter_003_empty/views/pages/homepage.dart';
import 'package:flutter_003_empty/views/pages/profilepage.dart';
import 'package:flutter_003_empty/views/pages/settingspage.dart';
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
            title: const Text('Navigation - Push Replacement'),
            actions: [
              IconButton(
                onPressed: () {
                  selectedThemeNotifier.value = !selectedThemeNotifier.value;
                },
                icon: Icon(value ? Icons.light_mode : Icons.dark_mode),
              ),
              IconButton(
                onPressed: () {
                  /**
                   * pushReplacement akan menimpa / menghapus page yang aktif saat ini dengan page yang baru
                   * Biasanya digunakan ketika pindah dari halaman login ke halaman utama atau sebaliknya ketika logout
                   */
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        /*
                        * widget SettingsPage HARUS me-return widget Scaffold !
                        */
                        return SettingsPage();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.settings),
              ),
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
