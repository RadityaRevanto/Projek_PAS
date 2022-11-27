import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("View  All",style: TextStyle(
              color: Colors.black,
            ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          SafeArea(
            child: Padding(
                padding: EdgeInsets.only(top: 20, left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F8Fa),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  label: Text("Find your Product"),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 30,
                                    color: Colors.grey,
                                  )
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Color(0xFFF7F8Fa),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(
                              Icons.notifications_none,
                              size: 30,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),),
                  ],
                )
            ),
          ),
          const SizedBox(height: 15.0),
          Container(
              padding:const EdgeInsets.only(right: 1.0, left: 5),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 200,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 12.0,
                childAspectRatio: 0.68,
                children: <Widget>[
                  _buildCard('Shark Helmet', '\$3.99', 'assets/images/agvcarbon.png',
                      'Full Face',
                      false, false, context),
                  _buildCard('Locatelli', '\$5.99',
                      'assets/images/kyt1.png','Full Face', false, false, context),
                  _buildCard('XR2 Nexx', '\$1.99',
                      'assets/images/snail.png','Full Face', false, false, context),
                  _buildCard('KTM RX-7', '\$2.99',
                      'assets/images/caber.png', 'Full Face',false, false, context),
                  _buildCard('Bell Moto 9', '\$5.49',
                      'assets/images/hjc.png','Full Face', false, false, context),
                  _buildCard('AGV SPORTS', '\$2.90',
                      'assets/images/simpson.png','Full Face', false, false, context),
                ],
              )),
          const SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, String desk, bool added,
      bool isFavorite, context) {
    return  Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      margin: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0)
        ],

        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xFF4C53A5),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  "-50%",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              /* IconButton(
              icon: Icon(Icons.favorite, size: 30),
              color:
              checkExist ? Colors.red : colorChecked,
              onPressed: () {
               checkExist ? deleteData() : addData();
               }
           ),*/
            ],
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {},
            child: Image.asset(imgPath,
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(height: 10,)
          ,              Container(
            padding: EdgeInsets.only(bottom: 8),
            alignment: Alignment.centerLeft,
            child: Text(name,
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF4C53A5),
                fontWeight: FontWeight.bold,
              ),),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(desk,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Color(0xFF4C53A5),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}