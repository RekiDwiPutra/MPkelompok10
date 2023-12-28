import 'package:flutter/material.dart';
import 'package:pizzaro/home_cart.dart';
import 'package:pizzaro/home_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeSection(),
    CartSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: page,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded), label: "Keranjang"),
          ],
        ),
        body: _widgetOptions.elementAt(page));
  }

  void _onItemTapped(int index) {
    setState(() {
      page = index;
    });
  }
}
