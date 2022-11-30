import 'package:flutter/material.dart';
import 'package:projek_pas/Database/FavDatabase.dart';
import 'package:projek_pas/Database/FavoriteModel.dart';
import 'package:projek_pas/DetailPage/detail_page2.dart';
import 'package:projek_pas/HomePage/models/helm.dart';
import 'package:projek_pas/HomePage/widgets/best_sell.dart';
import 'package:projek_pas/View%20All/ViewAll.dart';

class BestSell extends StatefulWidget {
  final Helm helm;
  BestSell(this.helm);

  @override
  State<BestSell> createState() => _BestSellState();
}

class _BestSellState extends State<BestSell> {
  bool checkExist = false;
  Color colorChecked = Colors.grey;

  Future read() async {
    checkExist = await CartDB.instance.read(widget.helm.title);
    setState(() {});
  }
  Future addData() async {
    CartModel fav;
    fav = CartModel(
        image: widget.helm.imageURL.toString(),
        name: widget.helm.title.toString(),
        price: widget.helm.price.toString(),
        rate: widget.helm.subtitle.toString());
    await CartDB.instance.create(fav);
    setState(() {
      checkExist = true;
    });
    // Navigator.pop(context);
  }
  Future deleteData() async {
    await CartDB.instance.delete(widget.helm.title);
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
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => Detail2(widget.helm))
                );
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            widget.helm.imageURL,
                            width: 70,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.helm.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, height: 1.5),
                            ),
                            Text(
                              widget.helm.subtitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, height: 1.5),
                            ),
                            Text(
                              widget.helm.price,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle,
                      ),
                      child:
                      IconButton(
                          icon: Icon(Icons.favorite, size: 20),
                          color:
                          checkExist ? Colors.red : colorChecked,
                          onPressed: () {
                            checkExist ? deleteData() : addData();
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );

  }
}

