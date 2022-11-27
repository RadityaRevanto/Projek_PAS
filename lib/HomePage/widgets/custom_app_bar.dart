import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';


class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: SingleChildScrollView(
child: Column(
  children: [
    SizedBox(height: 20,),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            //height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Color(0xFF979797).withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Search Product",
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                )
              ),

            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color(0xFF979797).withOpacity(0.1),
                shape: BoxShape.circle
            ),
            child: SvgPicture.asset("assets/icons/Bell.svg"),
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF979797).withOpacity(0.1),
                  shape: BoxShape.circle
                ),
                child:
                IconButton(
                  icon: SvgPicture.asset("assets/icons/Cart Icon.svg",),
                  onPressed: (){
                    //  Navigator.of(context).push(
                    //    MaterialPageRoute(builder: (context) =>  CartScreen()));
                  },
                ),
              ),
              Positioned(
                top: -3,
                right: 0,
                child: Container(
                  height: 15,
                width: 15,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF4848),
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white)
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    )
  ],
),
        ),
    );
  }
}