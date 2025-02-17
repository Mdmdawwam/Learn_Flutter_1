import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:profil/myhomepage.dart';
import 'package:profil/utama.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _SelectedIndex = 0;

  final List<Widget> pages = [
    Utama(),
    MyHomePage(),
  ];

  final items = <Widget>[
    Icon(Icons.home, size: 20, color: Colors.redAccent, semanticLabel: 'home'),
    Icon(Icons.shop, size: 20, color: Colors.redAccent, semanticLabel: 'shop'),
    Icon(Icons.favorite,
        size: 20, color: Colors.redAccent, semanticLabel: 'fav'),
    Icon(Icons.search,
        size: 20, color: Colors.redAccent, semanticLabel: 'search'),
    Icon(Icons.person,
        size: 20, color: Colors.redAccent, semanticLabel: 'person'),
  ];

  void itemTap(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_SelectedIndex],
      ),
      backgroundColor: Colors.red,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.red,
        animationDuration: Duration(milliseconds: 400),
        items: items,
        height: 60,
        onTap: itemTap,
      ),
    );
  }
}
