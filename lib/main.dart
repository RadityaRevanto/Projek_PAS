import 'package:flutter/material.dart';
import 'package:projek_pas/Login/UI/welcome_screen.dart';
import 'package:projek_pas/OnBoarding/Landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(headline6: TextStyle(color: Color(0XFF8B8B8B),
          fontSize: 18,))
        ),
      ),
      home: Landing(),
    );
  }
}