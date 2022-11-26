import 'package:flutter/material.dart';

import 'package:projek_pas/HomePage/home_page.dart';
import 'package:projek_pas/Keranjang/keranjang_screen.dart';
import 'package:projek_pas/ProfilPage/profile_page.dart';


class MaterialYou extends StatefulWidget {
  const MaterialYou({Key? key}) : super(key: key);

  @override
  State<MaterialYou> createState() => _MaterialYouState();
}

class _MaterialYouState extends State<MaterialYou> {

  int index = 0;
  final screens = [
    HomePage(),
    /*MainCart(),*/
    Center(child: Text('Profile'),),
    ProfilPage()
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    body: screens[index],
    bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.blue.shade100,
        labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14,
              fontWeight: FontWeight.w500,)
        ),
      ),
      child: NavigationBar(
        height: 60,
        backgroundColor:  Color(0xFFf1f5fb),
        selectedIndex: index,
        onDestinationSelected: (index) =>
            setState(() => this.index = index),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorite',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    ),
  );
}
