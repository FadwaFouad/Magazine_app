import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:magazine_app/features/home/view/pages/home_page.dart';
import 'package:magazine_app/features/profile/pages/profile_page.dart';
import 'package:magazine_app/features/settings/pages/settings_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Magazine"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
          )
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          Profile(),
          Settings(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: ((index) => setState(() {
                _currentIndex = index;
              })),
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: "settings",
            ),
          ]),
    );
  }
}
