import 'package:flutter/material.dart';
import 'package:projek_pas/HomePage/widgets/custom_app_bar.dart';
import 'package:projek_pas/HomePage/widgets/new_arivval.dart';
import 'package:projek_pas/HomePage/widgets/new_arivval2.dart';
import 'package:projek_pas/HomePage/widgets/search_input.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SearchInput(),
                NewArivval(),
                NewArivval2(),
              ],
            ),
          ],
        ),
    );
  }
}