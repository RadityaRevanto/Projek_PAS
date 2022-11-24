import 'package:flutter/material.dart';
import 'package:projek_pas/Keranjang/keranjang_screen.dart';


class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,
          left: 25,right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RichText(text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Berbagai Helm Keren dan Kece\nBerstandar SNI',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '👀',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ]
              ))
            ],
          ),
          Stack(children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                        offset: Offset(0, 1)
                    )
                  ]
              ),
              child: IconButton(icon: Icon(Icons.shopping_cart_outlined,color: Colors.grey, ),
                onPressed: () {
                 Navigator.of(context).push(
                   MaterialPageRoute(builder: (context) =>  CartScreen()));
                },),
            ),
            Positioned(
                right: 10,
                top: 10,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle
                  ),
                )),
          ],)
        ],
      ),
    );
  }
}