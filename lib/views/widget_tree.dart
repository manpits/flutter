import 'package:flutter/material.dart';
import 'package:flutter_003_empty/views/pages/homepage.dart';
import 'package:flutter_003_empty/views/pages/profilepage.dart';

List<Widget> pages = const [
  Homepage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return pages.elementAt(0);
  }
}
