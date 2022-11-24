import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projek_pas/HomePage/models/helm.dart';
import 'package:projek_pas/bloc/cart_bloc.dart';

class CartProductCard extends StatelessWidget {

  final Clothes clothes;
  final int quantity;

  const CartProductCard({Key? key, required this.clothes,required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 05.0),
      child: Column(
        children: [
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 88,
              child: AspectRatio(aspectRatio: 0.88,child:
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(clothes.imageURL,),
                  ),
              ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(clothes.title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  maxLines: 3,
                  ),
                  SizedBox(height: 5,),
                  Text("Helm Full Face",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(height: 5,),
                  Text.rich(
                    TextSpan(text: '\$${clothes.price}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(210, 28, 78, 159),
                      )
                    )
                  )
                ],
              ),

              SizedBox(width: 18,),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove_circle,
                        color: Colors.red,size: 25,),

                        onPressed: () {
                          context.read<CartBloc>().add(RemoveProduct(clothes));
                        },
                      ),

                      Text('$quantity', ),

                      IconButton(
                        icon: Icon(Icons.add_circle,color: Colors.green,size: 25,),
                        onPressed: () {
                          context.read<CartBloc>().add(AddProduct(clothes));
                        },
                      ),

                    ],
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}