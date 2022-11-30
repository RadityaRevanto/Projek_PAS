import 'package:flutter/material.dart';
import 'package:projek_pas/Database/FavDatabase.dart';
import 'package:projek_pas/Database/FavoriteModel.dart';
import 'package:projek_pas/DetailPage/detail_page.dart';
import 'package:projek_pas/HomePage/models/helm.dart';

class ClothesItem extends StatefulWidget{
  final Clothes clothes;
  ClothesItem(this.clothes);

  @override
  State<ClothesItem> createState() => _ClothesItemState();
}


class _ClothesItemState extends State<ClothesItem> {
  bool checkExist = false;
  Color colorChecked = Colors.grey;

  Future read() async {
    checkExist = await CartDB.instance.read(widget.clothes.title);
    setState(() {});
  }
  Future addData() async {
    CartModel fav;
    fav = CartModel(
        image: widget.clothes.imageURL.toString(),
        name: widget.clothes.title.toString(),
        price: widget.clothes.price.toString(),
        rate: widget.clothes.subtitle.toString());
    await CartDB.instance.create(fav);
    setState(() {
      checkExist = true;
    });
    // Navigator.pop(context);
  }
  Future deleteData() async {
    await CartDB.instance.delete(widget.clothes.title);
    setState(() {
      checkExist = false;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    read();
  }
  @override
  Widget build(BuildContext context){
    return Container(
      child:GestureDetector(
        onTap: (){
         Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => Detail(widget.clothes))
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(widget.clothes.imageURL),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  Positioned(
                      right: 15,
                      top: 15,
                      child: Container(
                        child:  IconButton(
                            icon: Icon(Icons.favorite, size: 30),
                            color:
                            checkExist ? Colors.red : colorChecked,
                            onPressed: () {
                              checkExist ? deleteData() : addData();
                            }),

                      ))
                ],
              ),
              Text(widget.clothes.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.5
                ),),
              Text(widget.clothes.subtitle,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.5
                ),),
              Text( '\$${widget.clothes.price}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: Theme.of(context).primaryColor,
                ),),
            ],
          ),
        ),
      ),
    );
  }
}