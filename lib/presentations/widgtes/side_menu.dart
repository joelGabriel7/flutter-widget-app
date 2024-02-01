import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 1;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });
        },
        children: const [
          NavigationDrawerDestination(
              icon: Icon(Icons.add), label: Text('Home screen')),
          NavigationDrawerDestination(
              icon: Icon(Icons.shopping_cart_checkout),
              label: Text('otra pantalla')),
        ]);
  }
}
