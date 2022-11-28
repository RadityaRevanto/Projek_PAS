import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projek_pas/HomePage/models/helm.dart';
import 'package:projek_pas/bottom_navigation/bottom_navigation.dart';


class Detail extends StatelessWidget {
  final Clothes clothes;
  Detail(this.clothes);

  Widget buildSizeButton({title, isSeleted}) {
    return MaterialButton(
      height: 40,
      minWidth: 40,
      elevation: 0,
      color: isSeleted ? Color.fromARGB(210, 28, 78, 159) : Color(0xffe8e8e8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSeleted ? Colors.white : Color(0xff727274),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      clothes.imageURL,
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    scrollPhysics: ScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    height: double.infinity,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    autoPlay: true,
                  ),
                  items: images
                      .map(
                        (e) => Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffb2adca).withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10.0,
                            offset: -Offset(0, 3),
                          )
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(e),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => MaterialYou(),
                                  ),
                                );
                              },
                              icon: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Color.fromARGB(210, 28, 78, 159),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.shopping_bag_rounded,
                                  color: Color.fromARGB(210, 28, 78, 159),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          clothes.title,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff39393b),
                          ),
                        ),
                        Text(
                          '\$${clothes.price}',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff39393b),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text(
                      clothes.subtitle,
                      style: TextStyle(
                        color: Color(0xff979797),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose Size",
                          style: TextStyle(
                            color: Color(0xff979797),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            buildSizeButton(
                              title: "S",
                              isSeleted: false,
                            ),
                            buildSizeButton(
                              title: "M",
                              isSeleted: true,
                            ),
                            buildSizeButton(
                              title: "L",
                              isSeleted: false,
                            ),
                            buildSizeButton(
                              title: "XL",
                              isSeleted: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description"),
                            Container(
                              width: 50,
                              child: Divider(
                                  thickness: 3,
                                  color: Color.fromARGB(210, 28, 78, 159),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Delivery"),
                            Container(
                              width: 50,
                              child: Divider(
                                  thickness: 3, color: Colors.transparent),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reviews"),
                            Container(
                              width: 50,
                              child: Divider(
                                thickness: 3,
                                color: Colors.transparent,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Berrylush is a casualwear In Wastern syle\nthat is relaxed,occasinal and suited fir everyday use",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffb2b2b2),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                          child: MaterialButton(
                            onPressed: () {
                            },
                            height: 66,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            textColor: Colors.white,
                            padding: EdgeInsets.all(0.0),
                            child: Container(
                              height: 66,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                               color: Color.fromARGB(210, 28, 78, 159)
                              ),
                              padding: EdgeInsets.all(10.0),
                              child: Center(
                                child: Text(
                                  "Add to Cart\t\t\t\$${clothes.price}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

