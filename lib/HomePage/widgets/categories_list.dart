import 'package:flutter/material.dart';



class CategoriesList extends StatelessWidget{
  final String title;
  CategoriesList(this.title);
  @override
  Widget build (BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          GestureDetector(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(
               // builder: (context) {
                //  return  ViewAll();
               // },
              //));
            },
            child: Row(
              children: [
                Text('View All',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 15,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}