import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projek_pas/Keranjang/DefaultButton.dart';
import 'package:projek_pas/Keranjang/keranjang_product_card.dart';
import 'package:projek_pas/bloc/cart_bloc.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("Your Cart",style: TextStyle(
              color: Colors.black,
            ),
            ),
            Text("4 Item",
            style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
        body: BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is CartLoaded) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 450,
                    child: ListView.builder(
                        itemCount: state.cart
                            .productQuantity(state.cart.generateClothes)
                            .keys
                            .length,
                        itemBuilder: (context, index) {
                          return CartProductCard(
                            clothes: state.cart
                                .productQuantity(state.cart.generateClothes)
                                .keys
                                .elementAt(index),
                            quantity: state.cart
                                .productQuantity(state.cart.generateClothes)
                                .values
                                .elementAt(index),
                          );
                        }),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                //height: 134,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, -15),
                        blurRadius: 20,
                        color: Color(0xFFDADADA).withOpacity(0.15),
                      )
                    ]),
                child: SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 40,
                            width: 40,

                            decoration: BoxDecoration(
                              color: Color(0xFFF5F6F9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:
                                SvgPicture.asset("assets/icons/receipt.svg"),
                          ),
                          Spacer(),
                          Text("Add Voucher code"),

                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: Color(0xFF757575),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(TextSpan(text: "Total Payment :\n",
                              children: [

                            TextSpan(
                                text: '\$${state.cart.totalString}',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                          ])),
                          SizedBox(
                            width: 185,
                            child: DefaultButton(
                              text: "Check Out",
                              press: () {},
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          );



        } else {
          return Text('Something went wrong');
        }
      },
    )
    );
  }

}
