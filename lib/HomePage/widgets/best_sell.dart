import 'package:flutter/material.dart';
import 'package:projek_pas/HomePage/models/helm.dart';

class BestSell extends StatelessWidget {
  final Helm helm;
  BestSell(this.helm);

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
              onTap: () {

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
                            helm.imageURL,
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
                              helm.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, height: 1.5),
                            ),
                            Text(
                              helm.subtitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, height: 1.5),
                            ),
                            Text(
                              helm.price,
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
               Icon(Icons.favorite, size: 30,
               color: Colors.red,
               ),
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

