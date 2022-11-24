import 'package:flutter/material.dart';
import 'package:projek_pas/HomePage/home_page.dart';

class AppBar extends StatefulWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  State<AppBar> createState() => _AppBarState();
}

class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cartAppBar(),
        ],
      ),
    );
  }
  Widget cartAppBar() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      GestureDetector(
        onTap: () {
          // navigate to home page
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>  HomePage()),
          );
        },
        child: const Icon(
          Icons.arrow_back,
          size: 20,
        ),
      ),
      const Text(
        "My Cart",
        style: TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
      const SizedBox(
        width: 20,
      ),
    ],
  );
}



