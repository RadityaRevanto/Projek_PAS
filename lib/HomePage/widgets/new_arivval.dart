import 'package:flutter/material.dart';
import 'package:projek_pas/HomePage/models/helm.dart';
import 'package:projek_pas/HomePage/widgets/categories_list.dart';
import 'package:projek_pas/HomePage/widgets/clothes_item.dart';


class NewArivval extends StatelessWidget{
  final clothesList = Clothes.generateClothes();

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          CategoriesList('New Arival'),
          Container(
            height: 280,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25,),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClothesItem(clothesList[index]),
              separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
              itemCount: clothesList.length,
            ),
          )
        ],
      ),
    );
  }
}