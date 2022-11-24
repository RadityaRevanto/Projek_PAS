import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projek_pas/OnBoarding/Landing.dart';
import 'package:projek_pas/bloc/cart_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartBloc()..add(LoadCart())),
      ],

    child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white,
          primaryColor: Color.fromARGB(210, 28, 78, 159),
          accentColor: Color(0xFFFFEBC7),
          textTheme: const TextTheme(
            headline4: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 30),
            button: TextStyle(color: Color(0xFFFFBD73)),
            headline5: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.normal,
                fontSize: 18),
          ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
            headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
          ),
        ),
      ),
      home: Landing(),
    ),
    );
  }
}