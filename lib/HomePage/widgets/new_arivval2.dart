import 'package:flutter/material.dart';
import 'package:projek_pas/HomePage/models/helm.dart';
import 'package:projek_pas/HomePage/widgets/best_sell.dart';
import 'package:projek_pas/HomePage/widgets/categories_list.dart';

class NewArivval2 extends StatelessWidget{
  final helmList = Helm.generateHelm();

  @override
  Widget build(BuildContext context){
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CategoriesList('Best Of Sell'),
            SingleChildScrollView(
              child: Container(
                height: 280,
                child:ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: helmList.length,
                  itemBuilder: (context, index) => BestSell(helmList[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}